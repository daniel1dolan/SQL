-- 1.
-- SELECT project.name 
-- FROM project 
-- INNER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id
-- INNER JOIN tech 
-- ON project_uses_tech.tech_id = tech.id
-- WHERE tech.name = 'JavaScript';

-- 2.
-- SELECT tech.name 
-- FROM project
-- INNER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id
-- INNER JOIN tech 
-- ON project_uses_tech.tech_id = tech.id
-- WHERE project.name = 'Personal Website';

-- 3. 
-- SELECT tech.name, project_uses_tech.project_id
-- FROM tech
-- LEFT OUTER JOIN project_uses_tech
-- ON tech.id = project_uses_tech.tech_id
-- WHERE project_uses_tech.project_id IS NULL;

-- 4. 
-- SELECT project_uses_tech.project_id, COUNT(tech.name)
-- FROM tech
-- LEFT OUTER JOIN project_uses_tech
-- ON tech.id = project_uses_tech.tech_id
-- GROUP BY project_uses_tech.project_id;

-- 5. 
-- SELECT project.name, project_uses_tech.tech_id
-- FROM project 
-- LEFT OUTER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id
-- WHERE project_uses_tech.tech_id IS NULL;

-- 6. 
-- SELECT project_uses_tech.tech_id, COUNT(project_uses_tech.project_id)
-- FROM project 
-- LEFT OUTER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id
-- GROUP BY project_uses_tech.tech_id;

-- 7. 
-- SELECT project.name, tech.name
-- FROM project
-- INNER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id
-- INNER JOIN tech
-- ON project_uses_tech.tech_id = tech.id;

-- 8. 
-- SELECT tech.name
-- FROM tech
-- INNER JOIN project_uses_tech
-- ON tech.id = project_uses_tech.tech_id
-- GROUP BY tech.name;

-- 9. 
-- SELECT tech.name
-- FROM tech
-- LEFT OUTER JOIN project_uses_tech
-- ON tech.id = project_uses_tech.tech_id
-- WHERE project_uses_tech.project_id IS NULL
-- GROUP BY tech.name;

-- 10. 
-- SELECT project.name
-- from project
-- LEFT OUTER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id
-- WHERE project_uses_tech.tech_id IS NOT NULL
-- GROUP BY project.name;

-- 11.
-- SELECT project.name
-- from project
-- LEFT OUTER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id
-- WHERE project_uses_tech.tech_id IS NULL
-- GROUP BY project.name;

-- 12. 
-- SELECT project.name, COUNT(project_uses_tech.tech_id) AS total_techs
-- FROM project
-- LEFT OUTER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id
-- GROUP BY project.name
-- ORDER BY total_techs DESC; 

-- 13. 
-- SELECT tech.name, COUNT(project_uses_tech.project_id) as total_projects
-- FROM tech
-- LEFT OUTER JOIN project_uses_tech
-- ON tech.id = project_uses_tech.tech_id
-- GROUP BY tech.name
-- ORDER BY total_projects DESC;

-- 14. 
-- SELECT AVG(project_uses_tech.tech_id) AS ave_techs
-- FROM project
-- LEFT OUTER JOIN project_uses_tech
-- ON project.id = project_uses_tech.project_id;