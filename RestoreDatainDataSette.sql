#restore the table
SELECT * FROM billing;

#Create a view
CREATE VIEW basicbilldetails AS
SELECT customerid, month, billedamount
FROM billings;

#Baseline query performance
SELECT * FROM billing Where billedamount==19929;

#Create an index
CREATE index billingamount ON billing(billedamount);

#Document the improvement in query performance
SELECT * FROM billing Where billedamount==19929;
#query time decrease to 0.00

