---
layout: post
title:  Improved Observation-based Simulations of Temperature and Humidity Accounting for Projected Variability Changes from a Climate Model
date:   2019-11-21 11:00:55 -0500
categories: seminar

hidden: true
---

Speaker:   Andrew Poppick, Assistant Professor of Statistics at Carleton College

### **Abstract**:
Future climate change impacts can depend on changes in variability in addition to mean changes. In the case of temperature, for example, general circulation models (GCMs) project changes in both; however, it is well understood that raw GCM output should not be used as inputs in impacts studies, since GCMs do not fully reproduce historical temperature distributions. There is therefore a widely recognized need for methods that combine observations with information about GCM-projected changes to produce future climate simulations that preserve features of the observed climate and capture relevant features of GCM projections. Our perspective is that such simulations should be based on transforming observations to account for GCM projected changes, in contrast to methods that transform GCM output to account for discrepancies with observations. Further, since variability at all timescales (i.e., day-to-day vs. monthly vs. interannual) is relevant to impacts, and variability changes can be timescale-dependent, observation-based simulation methods should account for projected changes in the full temporal covariance structure of the climate variable. I will first discuss a proposed observation-based simulation method for daily temperatures that accounts for projected changes in temporal covariance in a transient climate. As a part of this simulation method, I will describe a statistical model for the evolution of temporal covariances in a GCM under future forcing scenarios and its application to an ensemble of runs from one GCM. The estimated model for variability changes is also of interest on its own as a summary of projected of variability changes. Of course, temperature is not the only climate variable important for climate change impacts; for example, human health impacts related to heat stress depend crucially on the bivariate behavior of temperature and humidity. Time permitting, I will secondly discuss ongoing work to extend the above simulation method above to account for projected changes in the bivariate dependence structure of temperature and humidity.

### Background

Understand temp variability changes in a non-stationary process, capture changes in means and covariance.

Combine the observations with model, for pure model doesn’t match observation well. 

Idea: Predict is $T(s)=mean(T(s))+Cov(s)^{-1/2}Cov(0)^{1/2}(T(s)-T(0))$, 0 for observation, s for future. So we replace what we don’t know with model predictions. i.e. $mean(T(s)), Cov(s)^{-1/2}$. 

Discretize the Covariance matrix from spectrum density representation to approximate it. 

If we assume GCM is informative, i.e. preserves the ratio change in spectrum. 