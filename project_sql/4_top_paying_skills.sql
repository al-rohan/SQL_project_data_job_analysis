SELECT 
    skills,
    Round(AVG(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim on skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL 
    AND job_work_from_home = 'True'
GROUP BY skills
ORDER BY avg_salary DESC
LIMIT 25;

/*
Here is a simple breakdown of why these skills pay so much:

The Rare Fixers (SVN): Some very old, massive systems (like those in big banks) still use older tech. Since most new programmers don't learn it anymore, companies pay a fortune to the few experts who can still manage it.

The AI Builders (PyTorch, TensorFlow, Hugging Face): Companies are racing to build their own AI tools. Anyone who knows the "brains" behind AI is in extremely high demand.

The Automation Experts (Terraform, Ansible): Instead of setting up one computer at a time, these people write code that sets up thousands of "cloud" computers automatically. It saves big companies millions, so they get paid well.

The Digital Architects (Golang, Kafka, Couchbase): These tools handle the massive flood of data for apps like Uber or Netflix. Knowing how to keep these systems from crashing under pressure is a premium skill.

The New Frontier (Solidity): This is for Blockchain and "Smart Contracts." It’s a newer field with a small pool of experts, which keeps the salaries high.

The Bottom Line: The highest pay goes to people who either work on the newest tech (AI & Blockchain) or the hardest-to-replace old tech.

[
  {
    "skills": "svn",
    "avg_salary": "400000"
  },
  {
    "skills": "solidity",
    "avg_salary": "179000"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "golang",
    "avg_salary": "155000"
  },
  {
    "skills": "mxnet",
    "avg_salary": "149000"
  },
  {
    "skills": "dplyr",
    "avg_salary": "147633"
  },
  {
    "skills": "vmware",
    "avg_salary": "147500"
  },
  {
    "skills": "terraform",
    "avg_salary": "146734"
  },
  {
    "skills": "twilio",
    "avg_salary": "138500"
  },
  {
    "skills": "gitlab",
    "avg_salary": "134126"
  },
  {
    "skills": "kafka",
    "avg_salary": "129999"
  },
  {
    "skills": "puppet",
    "avg_salary": "129820"
  },
  {
    "skills": "keras",
    "avg_salary": "127013"
  },
  {
    "skills": "pytorch",
    "avg_salary": "125226"
  },
  {
    "skills": "perl",
    "avg_salary": "124686"
  },
  {
    "skills": "ansible",
    "avg_salary": "124370"
  },
  {
    "skills": "hugging face",
    "avg_salary": "123950"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120647"
  },
  {
    "skills": "cassandra",
    "avg_salary": "118407"
  },
  {
    "skills": "notion",
    "avg_salary": "118092"
  },
  {
    "skills": "atlassian",
    "avg_salary": "117966"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "116712"
  },
  {
    "skills": "airflow",
    "avg_salary": "116387"
  },
  {
    "skills": "scala",
    "avg_salary": "115480"
  }
]
*/