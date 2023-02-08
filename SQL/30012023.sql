--clinic payment 
--clinic enquiry to patient convert and payment by 


select EnquiryId from PatientMaster group by EnquiryId


--select sum(PaidAmount),ClinicID from InvoiceMaster group by ClinicID order by ClinicID asc-- where ClinicID-- group by EnquiryId

select patientid,count(patientid) as NoOfPayment,sum(PaidAmount) as PaidAmount  from InvoiceMaster group by patientid order by patientid asc


select count(DoctorID) ,ClinicID from tbl_DoctorDetails group by ClinicID

select patientid ,SUM(PaidAmount) as PaidAmount 
from InvoiceMaster 
where patientid in (select patientid from PatientMaster where  EnquiryId in (select EnquiryID from Enquiry))
Group By patientid

select DoctorID,count(ClinicID) as ClinicID from DoctorByClinic group by  DoctorID

