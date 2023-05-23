# Set up a cost budget

As a part of your cost budget, you will set up three notifications :
1. If your cost reach 80% of your budget 
2. If your cost are forecasted to exceed your budget 
3. If your cost exceed your budget

## Create Budget

1. From the navigation menu on the left, select "Budgets" then choose "Create a Budget" on the AWS console page.![[aws-create-budget.png]]
2. On the choose budget type page, choose "Cost Budget" under "Budget types"
   ![[aws-choose-budget-type.png]]
   
3. Set budget details: 
	1. On the "Set your budget" page, edit the "Budget name" file to read *MyMonthlyBudget*.
	2. In the "Set Budget Amount" section, keep the default selections for "Period", "Budget", "renewal type", "Start month", and "Budgeting method". Enter $2 ($100 in the image below) in the "Enter your budgeted amount". That is the minimum amount you can set.
	3. In the "Budget Scope" section, you can use these features to create budgets that track costs associated with a particular set of AWS services, linked accounts, tags, or other usage dimensions. ![[set-your-budget.png]]
		1. Configure alert for when actual costs exceeds 80% of budget threshold: On the "Configure alerts" page, you can have AWS Budgets contact you and others by email when your budget conditions are met. 
			1. Choose "Add an alert threshold".
			2. Configure this alert to be triggered when actual costs are greater than 80% of budgeted amount, as shown in the screenshot. 
			3. Add your email address and the email address of anyone who should receive this alert in the "Email recipients" field.
			![[budgeted-amount-threshold.png]]
			
		 2. Configure when actual cost exceeds your budget: 
			1. From the "Configure alerts" page, choose "Add alert threshold".![[aws-add-alert-threshold.png]]
			2. Configure this alert to be triggered when forecasted costs are greater than 100% of the budgeted amount, as shown in the screenshot.
			3. Add your email address and the email address of anyone who should receive this alert in the "Email recipients" field. 
		       ![[budgeted-amount-threshold-2.png]]
4. Attach actions (optional)
		*A budget action allows you to define and trigger cost-saving responses to reinforce a cost-conscious culture. You have the option to attach actions that run whenever your alert threshold has been exceeded, such as stopping EC2 instance from incurring any further costs. You can select the alerts to which you would like to attach actions, then define these actions.*
	![[aws-attach-actions.png]]
	 Review your budget and then choose "Create budget" to create budgets and alerts.
		*After you've created the budget, you see a list of AWS Budgets you have created. It is a best practice to create a total monthly cost budget for each AWS account that you use.
		You can create up to 62 budget days per month using the AWS (That simply means two budgets are free per month). After that, you simply pay as you go to create additional budgets.
 
 5. Inspect your new budget: To dive deeper into your budget details, select your new budget.
 ![[aws-inspect-budget.png]]
 From there you can view your budget details, access a budget performance summary, and inspect your historical budget performance. 
 ![[aws-monthly-budget-exceeded.png]]
		