create table if not exists public.powderhollow_saves (
  user_id uuid primary key references auth.users(id) on delete cascade,
  name text not null default 'Rider' check (char_length(name) between 1 and 20),
  save jsonb not null default '{}'::jsonb check (pg_column_size(save) < 200000),
  updated_at timestamptz not null default now()
);
alter table public.powderhollow_saves enable row level security;
drop policy if exists "powderhollow read own" on public.powderhollow_saves;
drop policy if exists "powderhollow insert own" on public.powderhollow_saves;
drop policy if exists "powderhollow update own" on public.powderhollow_saves;
create policy "powderhollow read own" on public.powderhollow_saves for select to authenticated using ((select auth.uid()) = user_id);
create policy "powderhollow insert own" on public.powderhollow_saves for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "powderhollow update own" on public.powderhollow_saves for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);
revoke all on public.powderhollow_saves from anon;
grant select, insert, update on public.powderhollow_saves to authenticated;
