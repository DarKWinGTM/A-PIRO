# Data Analysis Template

## Overview

A systematic template for comprehensive data analysis using A-PIRO methodology. This template ensures thorough, evidence-based analysis from data preparation to insights generation.

## When to Use

- Exploratory data analysis (EDA)
- Business intelligence reports
- Research data analysis
- Performance metrics analysis
- Customer behavior analysis

## Template

```markdown
**Phase 1: Intent Recognition**
- **Objective**: Analyze [DATA_TYPE] to achieve [BUSINESS_GOAL]
- **Type**: [Exploratory/Confirmatory/Predictive]
- **Success Criteria**:
  - Identify [NUMBER] key insights
  - Answer [SPECIFIC_QUESTIONS]
  - Provide actionable recommendations
- **Constraints**:
  - Data limitations
  - Analysis timeline
  - Privacy/compliance requirements

**Phase 2: Evidence-Based Analysis**
- **Data Source Verification**:
  - Primary source: [Source name]
  - Data collection method: [Method]
  - Quality assessment: [Reliability score]
  - Source URL: [If applicable]
- **Analysis Methods**:
  - Statistical approach: [e.g., inferential statistics]
  - Visualization best practices: [Tufte/Principles]
  - Tool selection rationale: [Tool + reason]

**Phase 3: Structured Reasoning**
[Apply analytical framework step-by-step]

**Phase 4: Cross-Reference Validation**
- Consistency between different metrics
- Alignment with business KPIs
- Cross-validation with external data

**Phase 5: Information Architecture**
[Structure findings for maximum clarity]

**Phase 6: Intent Clarification**
[Ambiguities resolved before analysis]

**Phase 7: System Integration**
- **Privacy Requirements**: GDPR/CCPA compliance
- **Data Security**: Anonymization/pseudonymization
- **Reproducibility**: Code and documentation

**Phase 8: Quality Assessment**
- **Complexity**: [Low/Medium/High]
- **Statistical Power**: [Sample size considerations]
- **Significance Level**: α = [value]

**Phase 9: Multi-Agent Collaboration**
- **Statistics Agent**: Method selection, validation
- **Domain Expert Agent**: Context, interpretation
- **Visualization Agent**: Chart selection, clarity

**Phase 10: RoT Memory Storage**
- **Pattern**: [Reusable analysis workflow]
- **Insights**: [Key findings for future reference]

**Data Context**:
- **Dataset**: [Name/description]
- **Time Period**: [Start date] to [End date]
- **Sample Size**: [N records]
- **Dimensions**: [Rows] × [Columns]
- **File Format**: [CSV/JSON/Database/etc.]
- **Data Quality**: [Assessment score /10]

**Variables Description**:
| Variable | Type | Description | Missing |
|----------|------|-------------|---------|
| [var1] | [Numeric/Categorical] | [Description] | [%] |
| [var2] | [Numeric/Categorical] | [Description] | [%] |
| ... | ... | ... | ... |

**Analysis Plan**:

1. **Data Preparation**
   ```python
   # Load data
   import pandas as pd
   import numpy as np

   df = pd.read_csv('[dataset].csv')

   # Initial inspection
   print(df.info())
   print(df.describe())
   print(df.isnull().sum())

   # Handle missing values
   # Handle outliers
   # Transform variables
   ```

2. **Exploratory Analysis**
   - Univariate analysis for each variable
   - Bivariate relationships
   - Correlation matrix
   - Distribution checks
   - Trend analysis (if temporal)

3. **Statistical Analysis**
   - Hypothesis testing if applicable
   - Confidence intervals
   - Statistical significance
   - Effect sizes

4. **Visualization Strategy**
   ```python
   # Distribution plots
   plt.figure(figsize=(10,6))
   sns.histplot(data=df, x='[variable]')

   # Correlation heatmap
   plt.figure(figsize=(12,8))
   sns.heatmap(df.corr(), annot=True, cmap='coolwarm')

   # Relationship plots
   sns.scatterplot(data=df, x='[var1]', y='[var2]')
   ```

**Analysis Execution**:

**Data Quality Assessment**:
- Completeness: [% complete]
- Consistency: [Consistency issues]
- Accuracy: [Validation results]
- Timeliness: [Data recency]

**Descriptive Statistics**:
```
[Numeric Variables]
Mean: [values]
Median: [values]
Std Dev: [values]
Min/Max: [values]
Quartiles: [values]

[Categorical Variables]
Frequencies: [counts]
Proportions: [percentages]
Modes: [most common values]
```

**Key Findings**:

1. **[Finding 1]**
   - Description: [Detail]
   - Evidence: [Statistical support]
   - Impact: [Business implication]
   - Confidence: [High/Medium/Low]

2. **[Finding 2]**
   - Description: [Detail]
   - Evidence: [Statistical support]
   - Impact: [Business implication]
   - Confidence: [High/Medium/Low]

3. **[Finding 3]**
   - Description: [Detail]
   - Evidence: [Statistical support]
   - Impact: [Business implication]
   - Confidence: [High/Medium/Low]

**Statistical Tests** (if applicable):
- **[Test Name]**
  - Null hypothesis: [H0]
  - Alternative hypothesis: [H1]
  - Test statistic: [value]
  - p-value: [value]
  - Conclusion: [Reject/Fail to reject H0]

**Visualizations**:

1. **[Chart 1: Title]**
   - Type: [Histogram/Scatter/Box/Bar/etc.]
   - Purpose: [What it shows]
   - Key insight: [Main takeaway]

2. **[Chart 2: Title]**
   - Type: [Chart type]
   - Purpose: [What it shows]
   - Key insight: [Main takeaway]

**Business Implications**:

**Opportunities**:
- [Opportunity 1 with data support]
- [Opportunity 2 with data support]
- [Opportunity 3 with data support]

**Risks**:
- [Risk 1 with probability]
- [Risk 2 with probability]
- [Risk 3 with probability]

**Recommendations**:

1. **[Recommendation 1]**
   - Action: [Specific steps]
   - Priority: [High/Medium/Low]
   - Expected Impact: [Quantifiable]
   - Timeline: [Implementation period]

2. **[Recommendation 2]**
   - Action: [Specific steps]
   - Priority: [High/Medium/Low]
   - Expected Impact: [Quantifiable]
   - Timeline: [Implementation period]

3. **[Recommendation 3]**
   - Action: [Specific steps]
   - Priority: [High/Medium/Low]
   - Expected Impact: [Quantifiable]
   - Timeline: [Implementation period]

**Methodology Notes**:
- Statistical significance threshold: α = [0.05]
- Confidence level: 95%
- Software used: [Python/R/Excel/Tableau/etc.]
- Version: [Software version]
- Last updated: [Date]

**Limitations**:
- [Limitation 1 and impact]
- [Limitation 2 and impact]
- [Limitation 3 and impact]

**Next Steps**:
- Collect additional data on [what]
- Analyze [additional dimension]
- Implement [pilot test]
- Schedule follow-up analysis

**Deliverables**:
1. Data analysis code ([format])
2. Visualizations ([format])
3. Statistical summary report
4. Presentation slides
5. Recommendations document
6. Raw data dictionary

**Appendices**:
- Appendix A: Full code
- Appendix B: Additional charts
- Appendix C: Raw statistics
- Appendix D: Data dictionary
```

## Example Usage

### Input
```
"Analyze our sales data to understand customer purchasing patterns"
```

### Output (Applying Template)
```markdown
**Phase 1**: Analyze sales transaction data to identify customer purchasing patterns
**Phase 2**: Data from CRM (verified, daily sync), analysis using RFM methodology
[Complete application...]
```

## Best Practices

- **Always start with EDA**: Never skip exploratory analysis
- **Visualize before modeling**: Understand patterns computationally
- **Document assumptions**: Make analysis reproducible
- **Check for confounders**: Consider alternative explanations
- **Validate findings**: Split data or use cross-validation
- **Tell a story**: Structure insights narratively

## Related Templates

- [Machine Learning Model Template](machine-learning-model.md)
- [Dashboard Template](dashboard.md)
- [Report Template](report.md)

## RoT Memory Pattern

**Pattern ID**: data-exploratory-analysis-v1
**Category**: Data Science > Data Analysis
**Success Rate**: 89%
**Use Cases**: Business analysis, research, performance metrics

Use this pattern for consistent, thorough data analysis that delivers actionable insights.