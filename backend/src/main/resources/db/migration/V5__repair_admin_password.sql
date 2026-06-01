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
    '$2a$12$9D.ha5zCP2Nr0GWYORU8q.i2hEy/0aVWzrR0jxdSco8jmm.SNL5Qy',
    'ADMIN'
) ON CONFLICT (student_id) DO UPDATE
SET password = EXCLUDED.password,
    role = 'ADMIN';
