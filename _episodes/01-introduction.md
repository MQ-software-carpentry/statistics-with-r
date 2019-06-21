---
title: "Introduction"
teaching: 30
exercises: 0
questions:
- "How do you prepare and investigate your data?"
- "How do you visualise your data?"
- "How do you choose what test/model to use?"
- "How do you check that your model performed correctly?"
- "How do you interpret the results of your model?"
objectives:
- "Identify different data types"
- "Recognise different types of visualisations"
keypoints:
- "Data should have 1 observation per row."
---
## What is statistics?

> Statistics is the science of collecting, organizing, and
> interpreting numerical facts, which we call data
>
> _Moore & McCabe (1993)_
{: .quotation}

> Statistics is a theory of information with inference making as its objective
> 
> _Mendenhall, Schaeffer & Wackerly (1986)_
{: .quotation}

> Statistics concerns the use of data to obtain
> information about real-life situations and problems
> 
> _Griffiths, Stirling & Weldon (1998)_
{: .quotation}

There are several different things that can all be put together as "statistics". These
can be simple summary numbers, like a count of objects, or the mean of different groups.
Statistics can also mean complex visualisation and modelling.

Statistics should be involved at all stages of a research project, starting from when you
first approach your research problem. Before you start performing experiments, there are

- Design of experiments
- Summarise data
- Visualise data
- Perform tests / models
- Check the model
- Interpret the model

- Data is often collected and organised in other software, e.g. Excel

## Types of variables

### Quantitative Variable

Any variable which takes numerical values. Numerical values can be
**discrete** (numerical values only assume certain values; e.g. number of children) or
**continuous** (numerical values can assume any value within a specific range;
e.g. adult heights).

In R, quantitative variables usually have the `numeric` class.

### Qualitative Variable

A variable which is classified into one of several categories. Qualitative variables are also
known as categorical variables.

If there is no ordering of the categories, we talk of having a **nominal variable**
and data collected on the variable as being **nominal data**. If the categories are ordered,
we talk of having an **ordinal variable** and any data collected on this variable as being
**ordinal data**.

Qualitative variables can be of several different classes in R, however it can be useful to
convert them to a `factor`. Ordinal variables can use the special type of factor `ordered`.

> ## What types of variables are these?
>
> 1. Weight
> 1. Smoking status (Never smoked, Previously smoked, Currently smokes)
> 1. Grade (percentage)
> 1. Grade (Fail, Pass, Credit, Distinction, High Distinction)
> 1. Agreement with a statement (Strongly agree, Agree, Neither agree nor disagree,
>    Disagree, Strongly disagree)
>
> > ## Solution
> > 
> > 1. Weight: quantitative, continuous
> > 1. Smoking status: qualitative, nominal
> > 1. Grade (percentage): quantitative, continuous
> > 1. Grade (category): qualitative, ordinal
> > 1. Agreement: qualitative, ordinal
> {: .solution}
{: .challenge}

{% include links.md %}
