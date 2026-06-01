INSERT INTO members (
    student_id,
    name,
    email,
    password,
    role
) VALUES (
    'admin',
    'COM''s 관리자',
    'admin@coms.kw.ac.kr',
    '$2a$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewnKXZ3PLBsRzFS.',
    'ADMIN'
) ON CONFLICT (student_id) DO NOTHING;
