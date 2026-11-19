-- AI Money Command Center Schema (PostgreSQL / Supabase)

CREATE TABLE IF NOT EXISTS departments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    slug TEXT UNIQUE NOT NULL,
    name TEXT NOT NULL,
    description TEXT,
    agent_role TEXT NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS records (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    thread_id TEXT UNIQUE NOT NULL,
    department_id UUID REFERENCES departments(id) ON DELETE CASCADE,
    mode TEXT NOT NULL CHECK (mode IN ('REAL', 'DEMO')),
    record_type TEXT NOT NULL DEFAULT 'WORKFLOW',
    title TEXT NOT NULL,
    input_prompt TEXT NOT NULL,
    draft_output TEXT,
    status TEXT NOT NULL DEFAULT 'PENDING_APPROVAL' CHECK (
        status IN ('DRAFTING', 'PENDING_APPROVAL', 'APPROVED', 'REJECTED', 'COMPLETED', 'ABORTED')
    ),
    metadata JSONB DEFAULT '{}'::jsonb,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS audit_logs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    record_id UUID REFERENCES records(id) ON DELETE CASCADE,
    actor TEXT NOT NULL,
    action TEXT NOT NULL,
    details JSONB DEFAULT '{}'::jsonb,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

INSERT INTO departments (slug, name, description, agent_role)
VALUES
    ('product-studio', 'Product Studio', 'Planners, templates, ebooks and product descriptions.', 'Product & Offer Generation Agent'),
    ('sales', 'Sales & Pipeline', 'Lead outreach drafts, proposals, and follow-up sequences.', 'Revenue & Outreach Agent'),
    ('marketing', 'Marketing', 'Campaign angles, social posts, and content briefs.', 'Growth & Content Agent'),
    ('operations', 'Operations', 'SOPs, schedules, and back-office workflow automations.', 'Operations & Execution Agent')
ON CONFLICT (slug) DO NOTHING;
