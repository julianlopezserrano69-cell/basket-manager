-- Basket Manager V9.6.0 · Rendimiento 360º
-- Migración ADITIVA: no elimina ni modifica datos existentes.
begin;
create extension if not exists pgcrypto;
create table if not exists public.training_load (
 id uuid primary key default gen_random_uuid(),
 entrenamiento_id text not null, jugador_id text not null, equipo_id text, fecha date,
 rpe numeric(3,1) not null check (rpe between 1 and 10),
 duracion integer not null check (duracion > 0 and duracion <= 300),
 carga numeric generated always as (rpe * duracion) stored,
 notas text, created_at timestamptz not null default now(), updated_at timestamptz not null default now(),
 unique(entrenamiento_id,jugador_id)
);
create index if not exists idx_training_load_equipo_fecha on public.training_load(equipo_id,fecha desc);
create index if not exists idx_training_load_jugador_fecha on public.training_load(jugador_id,fecha desc);
alter table public.training_load enable row level security;
do $p$ begin if not exists(select 1 from pg_policies where schemaname='public' and tablename='training_load' and policyname='public_all') then create policy public_all on public.training_load for all using (true) with check (true); end if; end $p$;
create table if not exists public.player_objectives (
 id uuid primary key default gen_random_uuid(), jugador_id text not null, equipo_id text,
 fecha_inicio date not null default current_date, fecha_fin date, categoria text, objetivo text not null,
 estado text not null default 'Activo', progreso numeric(5,2) default 0 check (progreso between 0 and 100), notas text,
 created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
create index if not exists idx_player_objectives_jugador on public.player_objectives(jugador_id,estado);
alter table public.player_objectives enable row level security;
do $p$ begin if not exists(select 1 from pg_policies where schemaname='public' and tablename='player_objectives' and policyname='public_all') then create policy public_all on public.player_objectives for all using (true) with check (true); end if; end $p$;
commit;
-- Verificación
select 'training_load' tabla,count(*) registros from public.training_load union all select 'player_objectives',count(*) from public.player_objectives;
