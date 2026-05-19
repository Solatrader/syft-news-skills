# Security Policy

## Reporting A Vulnerability

If you find a security issue in this repository:

1. do not open a public issue with exploit details
2. contact the maintainer privately
3. include enough detail to reproduce the problem safely

Suggested report contents:

- affected file or script
- vulnerability type
- reproduction steps
- impact assessment
- suggested mitigation if known

## Scope

This repository mostly contains skills, documentation, and packaging scripts.
Likely issues include:

- unsafe shell or script behavior
- path traversal in packaging code
- accidental secret inclusion in release bundles
- unsafe installation guidance

## Hardening Checklist

For a public GitHub repository, enable:

- secret scanning
- push protection
- Dependabot alerts
- code scanning if you add CI later
