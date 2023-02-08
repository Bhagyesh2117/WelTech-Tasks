--konse patient ne kitana  payment kiya
select PM.FName+' '+PM.LastName[patientName],sum(IM.paidamount) 
from PatientMaster PM
left join invoicemaster IM on PM.patientid=IM.patientid
group by PM.FName,PM.LastName

--konse patient ne kitani baar payment kiya
select PM.Fname+' '+PM.LastName[patientName]
,count(IM.paidamount)[no of time pay] 
from PatientMaster PM
left join invoicemaster IM on PM.patientid=IM.patientid
group by PM.FName,PM.LastName

--konse doctor ne kitni baar payment collect kiya he 
select DD.FirstName+' '+DD.LastName[doctorName]
,count(IM.DoctorID)[no of time pay] 
from tbl_DoctorDetails DD
left join invoicemaster IM on DD.DoctorID=IM.DoctorID
group by DD.FirstName,DD.LastName
 
-- konse doctor ne kitana  payment collect kiya
 select DD.FirstName+' '+DD.LastName[doctorName],
sum(IM.paidamount)[ payamount] 
from tbl_DoctorDetails DD
left join invoicemaster IM on DD.DoctorID=IM.DoctorID
group by DD.FirstName,DD.LastName

--konse clinic me kitne patient h
 
 select CD.ClinicID
 ,CD.ClinicName
 ,count(PM.patientid)
 from tbl_ClinicDetails CD
 left join PatientMaster PM
 on CD.ClinicID=PM.ClinicID
 group by CD.ClinicName,CD.ClinicID

--konse clinic ne kitana payment kiya h

select CD.ClinicName
,sum(IM.paidamount)[Ammount collection]
from tbl_ClinicDetails CD
left join InvoiceMaster IM
on CD.ClinicID=IM.ClinicID
group by  CD.ClinicName

--konse clinic ne kitani baar payment kiya h

select CD.ClinicName
,count(IM.paidamount)[No of Payment]
from tbl_ClinicDetails CD
left join InvoiceMaster IM
on CD.ClinicId=IM.clinicid
group by CD.ClinicName




--konsa dr kitne clinic me jata he dr name or clinic name

Select CD.ClinicID,CD.ClinicName,Count(PM.patientid) [No of Patient] From tbl_ClinicDetails CD 
left join PatientMaster PM on CD.ClinicID=PM.ClinicID
Group BY CD.ClinicName,CD.ClinicID

Select * From PatientMaster where ClinicID=44

Select DD.FirstName+' '+DD.LastName [Doctor Name], CD.ClinicName 
From DoctorByClinic DBC left join tbl_ClinicDetails Cd 
on CD.ClinicID=DBC.ClinicID
left join tbl_DoctorDetails DD on DD.DoctorID=DBC.DoctorID
