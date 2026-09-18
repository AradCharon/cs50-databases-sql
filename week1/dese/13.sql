SELECT d.name, e.pupils, e.per_pupil_expenditure, s.exemplary
FROM districts d
JOIN expenditures e ON d.id = e.district_id
JOIN staff_evaluations s ON d.id = s.district_id
WHERE d.type = 'Public School District'
  AND e.pupils > (SELECT AVG(pupils) FROM expenditures)
  AND e.per_pupil_expenditure > (SELECT AVG(per_pupil_expenditure) FROM expenditures)
  AND s.exemplary > (SELECT AVG(exemplary) FROM staff_evaluations)
ORDER BY s.exemplary DESC, e.pupils DESC;
