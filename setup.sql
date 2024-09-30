create schema nehsanet;

use nehsanet; 
CREATE TABLE `pages` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `stem` VARCHAR(100) NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `date` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `related_pages` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `page_id` INT NOT NULL,
    `related_page_id` INT NOT NULL,
    UNIQUE (page_id, related_page_id),
    FOREIGN KEY (page_id) REFERENCES pages(id),
    FOREIGN KEY (related_page_id) REFERENCES pages(id)
);


INSERT INTO pages (stem, title) VALUES
('/agile', 'Agile Methodolgy and Development Practices'),
('/ai', 'Artificial Intelligence'),
('/blog', 'Blog'),
('/about', 'About Jesse'),
('/angular', 'Angular'),
('/k8s', 'Kubernetes'),
('/chef', 'Chef'),
('/csharp', 'C#'),
('/docker', 'Docker'),
('/seo', 'Search Engine Optimization'),
('/pytest', 'PyTest'),
('/nosql', 'NoSQL'),
('/dns', 'DNS'),
('/typescript', 'TypeScript'),
('/testing', 'Testing'),
('/linux', 'Linux'),
('/go', 'Golang'),
('/clarity', 'Microsoft Clarity'),
('/graphql', 'GraphQL'),
('/monetizenow', 'Microsoft Monetize Now'),
('/security', 'Security'),
('/school', 'School'),
('/school/engr102', '[engr102] Design Engineering and Problem Solving'),
('/school/ph207', '[ph207] Galaxies, Cosmology and Life in the Universe'),
('/npm', 'Node Package Manager'),
('/playwright', 'Playwright'),
('/doxy', 'Doxygen'),
('/welcome', 'Welcome'),
('/dot', 'DOT'),
('/ohai', 'OHAI'),
('/powershell', 'Powershell'),
('/projects', 'Projects'),
('/asyncio', 'Asyncio'),
('/python', 'Python'),
('/mercurial', 'Mercurial'),
('/aws', 'Amazon Web Services'),
('/jenkins', 'Jenkins'),
('/discord', 'Discord'),
('/jsdoc', 'JSDoc'),
('/cloud', 'Cloud'),
('/tsql', 'Transactional SQL'),
('/java', 'Java'),
('/github', 'Github'),
('/vue', 'Vue'),
('/webdev-frameworks', 'Javascript Frameworks'),
('/website', 'This Website'),
('/tls', 'Transport Layer Security'),
('/2024-august-29/gametheory', '[blog] Game Theory'),
('/2024-july-28/makingofmud', '[blog] Making of NehsaMUD'),
('/2024-august-29/ageism', '[blog] Ageism'),
('/2024-sept-1/customelements', '[blog] Using Custom HTML Elements'),
('/2024-sept-1/vscodebadux', '[blog] Bad UX Design'),
('/2024-sept-1/i-understand-pi', '[blog] Pi'),
('/grammar', 'Grammar'),
('/gemini', 'Google Gemini'),
('/design', 'Software Development, SDLC'),
('/swagger', 'Swagger'),
('/glider', 'Glider'),
('/signup', 'Signup'),
('/sql', 'SQL'),
('/ssr', 'Server Side Rendering'),
('/mud', 'NehsaMUD'),
('/aiimage', 'AI Image Generation'),
('/inno', 'INNO Setup'),
('/mysql', 'MySQL'),
('/mariadb', 'MariaDB'),
('/regex', 'Regular Expressions'),
('/react', 'React'),
('/webdesign', 'Web Design'),
('/kestrel', 'Kestrel'),
('/ide', 'IDEs'),
('/iis', 'Internet Information Services (IIS)'),
('/tailwindcss', 'Tailwind CSS'),
('/redux', 'Redux'),
('/games', 'Games'),
('/valheim', 'Valheim')


insert into related_pages(page_id, related_page_id) values ((select id from pages where stem like '%cloud%'),(select id from pages where stem like '%aws%'))
insert into related_pages(page_id, related_page_id) values ((select id from pages where stem like '%aws%'),(select id from pages where stem like '%cloud%'))
insert into related_pages(page_id, related_page_id) values ((select id from pages where stem like '%cloud%'),(select id from pages where stem like '%gcp%'))
insert into related_pages(page_id, related_page_id) values ((select id from pages where stem like '%gcp%'),(select id from pages where stem like '%cloud%'))
insert into related_pages(page_id, related_page_id) values ((select id from pages where stem like '%cloud%'),(select id from pages where stem like '%azure%'))
insert into related_pages(page_id, related_page_id) values ((select id from pages where stem like '%azure%'),(select id from pages where stem like '%cloud%'))
insert into related_pages(page_id, related_page_id) values ((select id from pages where stem like '%cloud%'),(select id from pages where stem like '%aws%'))
