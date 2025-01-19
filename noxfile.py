# noxfile.py

import nox

@nox.session
def tests(session):
    # Install dependencies
    session.install("pytest")
    # Run tests
    session.run("pytest", "-v")
