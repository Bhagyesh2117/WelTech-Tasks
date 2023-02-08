Select PM.FName+' '+PM.LastName [Patient Name],
IM.GrandTotal,
SUM(PaidAmount) [Total Paid Amount],
IM.GrandTotal - SUM(PaidAmount) [Pending Amount],
SUM(IM.PaidAmount) * 100 / IM.GrandTotal [Paid %],
((IM.GrandTotal - SUM(PaidAmount)) * 100) / IM.GrandTotal [Pending %],
(SUM(IM.PaidAmount) * 100 / IM.GrandTotal) +(((IM.GrandTotal - SUM(PaidAmount)) * 100) / IM.GrandTotal) [Total %]
From PatientMaster PM 
left join InvoiceMaster Im on IM.patientid=PM.patientid 
where GrandTotal<>0 --IM.patientid=13 

Group By PM.FName,PM.LastName,IM.GrandTotal
having IM.GrandTotal - SUM(PaidAmount) >0







select  * from tbl_ClinicDetails
select * from InvoiceMaster



Select cd.ClinicName,
IM.GrandTotal,
SUM(PaidAmount) [Total Paid Amount],
IM.GrandTotal - SUM(PaidAmount) [Pending Amount],
SUM(IM.PaidAmount) * 100 / IM.GrandTotal [Paid %],
((IM.GrandTotal - SUM(PaidAmount)) * 100) / IM.GrandTotal [Pending %],
(SUM(IM.PaidAmount) * 100 / IM.GrandTotal) +(((IM.GrandTotal - SUM(PaidAmount)) * 100) / IM.GrandTotal) [Total %]
From tbl_ClinicDetails CD 
left join InvoiceMaster Im on IM.ClinicID=CD.ClinicID 
where GrandTotal<>0 
Group By cd.ClinicName,IM.GrandTotal--,IM.ClinicID
having IM.GrandTotal - SUM(PaidAmount) >0
