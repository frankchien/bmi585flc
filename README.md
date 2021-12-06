# bmi585flc
Final Project for BMI 585 Class
Frank Chien, 2021
This is a R package compiling various functions that was written over the course of the semister as taught by Dr. McKay

These are the functions contained

sensitivity(pred,truth)
specificity(pred,truth)
accuracy(pred,truth)
ppv(pred,truth)
f1(pred,truth)

Homework 4, Problem 5. (boxMuller(n))
Homework 6, Problem 1 (twoSidedT(t,n))
Homework 6, Problem 1 (twoSidedZ(z))
Homework 6, Problem 6 (effectSize(x,g))
Homework 6, Problem 15 (welchT(x,y))
Homework 7, Problem 1 (minimumN(d))
Homework 7, Problem 10 (chiSquareCounts(tib))
Homework 7, Problem 11 (postHocPower(d,n1,n2)).
Homework 8, Problem 1 (bhAdjust(p))
Homework 8, Problem 1 (fdrAdjust(p))
Homework 11, Problem 1 (r2(pred,truth))
Homework 11, Problem 1 (adjR2(pred,truth))

unscale(x): A function that takes a numerical object from scale and reverses the centering/scaling, if any. (These are stored as attributes).
pcApprox(x, npc): A function that returns an approximation to the data x based on npc PCs. (Note that the approximation should be rescaled and centered to match the original data). Should work on tibbles or dataframes; either can be returned.
pcLollipop(x): A function that creates a lollipop plot of the principal component loadings of the (potentially unscaled/uncentered) data x. Should work on tibbles or dataframes. The plot object is returned.

TO DOs
- need to check Homework 7, Problem 10 (chiSquareCounts(tib)). I wrote it to pass in v1, v2, and then didn't use it...why?
- need to update roxygen comments for all functions
