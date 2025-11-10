# API Development Template

## Overview

A comprehensive template for developing REST APIs using A-PIRO methodology. This template follows the 10-phase approach to ensure high-quality, production-ready APIs.

## When to Use

- Building new REST APIs
- Refactoring existing APIs
- Documenting API specifications
- Setting up API development standards

## Template

```markdown
**Phase 1: Intent Recognition**
- **Objective**: Build [TYPE] API for [DOMAIN]
- **Type**: [REST/GraphQL/GRPC]
- **Success Criteria**:
  - [List 3-5 specific success criteria]
  - Performance targets (response time, throughput)
  - Scalability requirements
- **Constraints**:
  - Technology stack limitations
  - Budget/time constraints
  - Compliance requirements

**Phase 2: Evidence-Based Analysis**
- **API Design Standards**:
  - REST principles (Fielding, 2000)
  - OpenAPI 3.0+ specification
  - HTTP status codes (RFC 7231)
- **Authentication Standards**:
  - OAuth 2.0 (RFC 6749)
  - JWT (RFC 7519)
  - OWASP best practices
- **Database Choices**:
  - [Selected DB] because [evidence]
  - Source: [Official documentation link]
  - Benchmarks: [Performance data]

**Phase 3: Structured Reasoning**
[Apply CoT/ToT/GoT based on complexity]

**Phase 4: Cross-Reference Validation**
- Endpoints ↔ Database schema consistency
- Authentication ↔ Authorization alignment
- Input validation ↔ Error handling correlation

**Phase 5: Information Architecture**
```
/api/v1
  /auth
    [Authentication endpoints]
  /[resource1]
    [CRUD operations]
  /[resource2]
    [Specialized operations]
```

**Phase 6: Intent Clarification**
[Address any ambiguities before implementation]

**Phase 7: System Integration**
- **Security Requirements**:
  - Input validation (all inputs)
  - SQL injection prevention
  - XSS protection
  - Rate limiting
  - CORS configuration
- **Performance Requirements**:
  - Caching strategy
  - Database indexing
  - Connection pooling
  - Response compression

**Phase 8: Quality Assessment**
- **Complexity Score**: [Calculate using matrix]
- **Optimization Level**: [Simple/Moderate/Complex]
- **Expected ROI**: [High/Medium/Low]

**Phase 9: Multi-Agent Deployment**
- **Code Quality Agent**: Structure, patterns, maintainability
- **Security Agent**: Authentication, authorization, data protection
- **Architecture Agent**: Scalability, performance, resilience

**Phase 10: RoT Memory Storage**
- **Pattern**: [Reusable architecture pattern]
- **Category**: [Microservices/monolith/hybrid]

**Implementation Details**:

**Core Endpoints**:
```
Method  Endpoint              Description       Auth
GET     /api/v1/[resource]   List resources    Optional
GET     /api/v1/[resource]/:id Get one resource Optional
POST    /api/v1/[resource]   Create resource   Required
PUT     /api/v1/[resource]/:id Update resource  Required
DELETE  /api/v1/[resource]/:id Delete resource  Required
```

**Data Models**:
```json
{
  "[resource]": {
    "id": "UUID/Integer",
    "created_at": "ISO 8601",
    "updated_at": "ISO 8601",
    "[field1]": "type",
    "[field2]": "type"
  }
}
```

**Response Format**:
```json
{
  "success": boolean,
  "data": object/array,
  "error": {
    "code": "ERROR_CODE",
    "message": "Human readable",
    "details": "Technical details"
  },
  "metadata": {
    "total": number,
    "page": number,
    "limit": number
  }
}
```

**Technology Stack**:
- **Runtime**: [Node.js/Python/Java/etc.]
- **Framework**: [Express/FastAPI/Spring/etc.]
- **Database**: [PostgreSQL/MongoDB/etc.]
- **ORM**: [Prisma/SQLAlchemy/Hibernate/etc.]
- **Authentication**: [JWT/OAuth/Cookie]
- **Validation**: [Zod/Joi/Pydantic/etc.]

**Development Standards**:
- Code formatting: [Prettier/Black/etc.]
- Linting: [ESLint/PyLint/etc.]
- Testing: [Jest/Pytest/JUnit]
- Coverage: [>90%]
- Documentation: OpenAPI/Swagger

**Security Checklist**:
- [ ] Input validation on all endpoints
- [ ] Authentication for protected resources
- [ ] Authorization based on roles
- [ ] SQL injection prevention
- [ ] XSS protection
- [ ] CSRF protection (state-changing endpoints)
- [ ] Rate limiting
- [ ] HTTPS enforcement
- [ ] Security headers (Helmet.js/Middleware)
- [ ] Log security events

**Testing Strategy**:
```javascript
// Unit tests
describe('[Resource] Controller', () => {
  test('should create resource')
  test('should handle validation errors')
  test('should handle duplicates')
})

// Integration tests
describe('[Resource] API', () => {
  test('POST /api/v1/[resource]')
  test('GET /api/v1/[resource]/:id')
  test('PUT /api/v1/[resource]/:id')
  test('DELETE /api/v1/[resource]/:id')
})
```

**Monitoring & Observability**:
- **Logging**: Structured JSON logs
- **Metrics**: Prometheus/Grafana
- **Tracing**: Jaeger/Zipkin
- **Health Checks**: /health endpoint
- **Error Tracking**: Sentry

**Deployment**:
- **Containerization**: Docker
- **Orchestration**: Kubernetes
- **CI/CD**: GitHub Actions
- **Environment**: Dev/Staging/Production

**Documentation Requirements**:
- OpenAPI 3.0+ specification
- Endpoint documentation
- Example requests/responses
- Authentication guide
- Error codes reference
- SDK documentation (if applicable)

**Deliverables**:
1. Complete source code
2. API specification (OpenAPI)
3. Unit and integration tests
4. Documentation
5. Docker configuration
6. Deployment scripts
7. Monitoring setup
8. Performance benchmarks
```

## Example Usage

### Input
```
"Build a user management API for an e-commerce platform"
```

### Output (Applying Template)
```markdown
**Phase 1**: Objective = Build REST API for e-commerce user management
**Phase 2**: Evidence = OWASP authentication, PostgreSQL for ACID compliance
**Phase 3**: Reasoning = ToT (microservices vs monolith)
[Complete 10-phase application...]
```

## Best Practices

- **Use proper HTTP methods**: GET for read, POST for create, PUT for update
- **Implement pagination**: Prevent large response payloads
- **Use appropriate status codes**: 200, 201, 400, 401, 404, 500
- **Version your API**: Include version in URL (/v1/, /v2/)
- **Rate limit**: Prevent abuse and ensure availability
- **Document everything**: Both code and API specifications

## Related Templates

- [Database Migration Template](database-migration.md)
- [Authentication Template](authentication.md)
- [Microservices Template](microservices.md)

## RoT Memory Pattern

**Pattern ID**: api-rest-crud-v1
**Category**: Software Engineering > API Development
**Success Rate**: 92%
**Use Cases**: New API development, API refactoring

When you need to build a CRUD API, reuse this pattern for consistent structure and faster development.