### Description
The first step is to choose dependent and independent variables. This choice is essentially a mapping from multidimensional data into an unstructured point dataset. This example chooses MONTHLY_PAYMENT, INTEREST_RATE, and LOAN_AMOUNT as (x, y, z) point coordinates, and TIME_LATE as a scalar value. This maps four of six variables. For now we will ignore the other two variables.

The example uses vtkGaussianSplatter to perform the splatting operation (i.e., conversion from unstructured points to volume dataset). This is followed by an isosurface extraction. We splat the data two times. The first time we splat the entire population. This is to show context and appears as gray/ wireframe in the figure. The second time we splat the data and scale it by the value of TIME_LATE . As a result, only payments that are late contribute to the second isosurface. The results of this visualization are interesting. First, we see that there is a strong correlation between the two independent variables MONTHLY_PAYMENT and LOAN_AMOUNT . (This is more evident when viewing the data interactively.) We see that the data falls roughly on a plane at a 45 degree angle between these two axes. With a little reflection this is evident: the monthly payment is strongly a function of loan amount (as well as interest rate and payment period). Second, we see that there is a clustering of delinquent accounts within the total population. The cluster tends to grow with larger interest rates and shrink with smaller monthly payments and loan amounts. Although the relationship with interest rate is expected, the clustering towards smaller monthly payments is not. Thus our visualization has provided a clue into the data. Further exploration may reveal the reason(s), or we may perform additional data analysis and acquisition to understand the phenomena.

One important note about multidimensional visualization. Because we tend to combine variables in odd ways (e.g., the use of MONTHLY_PAYMENT , INTEREST_RATE , and LOAN_AMOUNT as (x, y, z) coordinates), normalization of the data is usually required. To normalize data we simply adjust data values to lie between (0,1). Otherwise our data can be badly skewed and result in poor visualizations.

!!! info
    See [Figure 9-50](/VTKBook/09Chapter9/#Figure%209-50) in [Chapter 9](/VTKBook/09Chapter9) The [VTK Textbook](/VTKBook/01Chapter1).