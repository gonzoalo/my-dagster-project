from setuptools import find_packages, setup

setup(
    name="my_dagster_project",
    packages=find_packages(exclude=["my_dagster_project_tests"]),
    install_requires=[
        "dagster",
        "dagster-cloud",
        "python-gnupg==0.5.0"
    ],
    extras_require={"dev": ["dagit", "pytest"]},
)
