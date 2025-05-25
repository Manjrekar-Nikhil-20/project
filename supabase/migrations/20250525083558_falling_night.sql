/*
  # Add initial venue and slot data

  1. Insert Data
    - Add sample venues
    - Add slots for each venue
*/

-- Insert venues
INSERT INTO venues (id, name, image, price, base_members, extra_person_charge, decoration_fee, screen_size, refund_policy)
VALUES 
  ('eaec6d1f-37d6-4d75-b56d-3c87c5c7b1c4', 'Luna', 'https://i.pinimg.com/736x/78/ff/cc/78ffccdd2071737b2cfc15bc1ab5bae4.jpg', 1999, 6, 249, 499, '120" screen with Dolby sound', 'Refund if canceled 72 hours in advance'),
  ('f7c1d8a3-2e5b-4c9f-a1d6-8b4e7f3c2a5b', 'Rosa', 'https://i.pinimg.com/736x/7e/65/e3/7e65e33ee26c2f125fbf50f68f80a957.jpg', 999, 2, 249, 499, '120" screen with Dolby sound', 'Refund if canceled 72 hours in advance'),
  ('b9e2a4c6-1f8d-4a7e-9c3b-5d2e8f1a4b7c', 'Aura', 'https://i.pinimg.com/736x/97/d4/31/97d431eb8c5fdeba1df8a5c0804a1c3c.jpg', 1499, 4, 249, 499, '133" screen with Dolby sound', 'Refund if canceled 72 hours in advance'),
  ('d5a7b2e9-3c4f-4d8e-b6a1-9f2c8e3d7a4b', 'Mini Max', 'https://i.pinimg.com/736x/24/a6/40/24a6405a8663c52707a5c9951a8c4a4b.jpg', 2499, 8, 249, 499, '165" screen with Dolby sound', 'Refund if canceled 72 hours in advance');

-- Insert slots for each venue
INSERT INTO slots (venue_id, start_time, end_time)
SELECT 
  v.id,
  t.start_time,
  t.end_time
FROM venues v
CROSS JOIN (
  VALUES 
    ('09:30:00'::time, '12:30:00'::time),
    ('13:00:00'::time, '16:00:00'::time),
    ('16:30:00'::time, '19:30:00'::time),
    ('20:00:00'::time, '21:30:00'::time),
    ('22:00:00'::time, '01:00:00'::time)
) AS t(start_time, end_time);