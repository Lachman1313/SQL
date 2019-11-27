-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "id" serial   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "dept_emp" (
    "id" serial   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "dept_manager" (
    "id" serial   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "employees" (
    "id" serial   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "salaries" (
    "id" serial   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "titles" (
    "id" serial   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "id"
     )
);

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_manager" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "titles" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "dept_manager" ("emp_no");

ALTER TABLE "titles" ADD CONSTRAINT "fk_titles_emp_no" FOREIGN KEY("emp_no")
REFERENCES "salaries" ("emp_no");

