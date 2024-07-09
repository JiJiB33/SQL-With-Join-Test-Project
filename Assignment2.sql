create database Assignment_2

create schema orderSch

create table orderSch.Orders
(
OrderNo char(10) not null
constraint pk_Orders_OrderNo
primary key(OrderNo)
constraint chk_Orders_OrderNo
check (OrderNo like 'LBS-[0-9][0-9][0-9][0-9][0-9]'),

Orderdate date not null
constraint def_Orders_Orderdate
default getdate(),

StaffID char(7) not null
constraint fk_Staff_StaffID
Foreign Key(StaffID)
References sale.Staff(StaffID)
constraint chk_Orders_StaffID
check (StaffID like 'IDN-[0-9][0-9][0-9]'),

OfficeID char(5) not null
constraint fk_Office_OfficeID
Foreign Key(OfficeID)
References sale.Office(OfficeID)
constraint chk_Orders_OfficeID
check (OfficeID like 'Of-[0-9][0-9]'),

CustomerID char(5) not null
constraint fk_Customer_CustomerID
Foreign Key(CustomerID)
References cus.Customer(CustomerID)
constraint chk_Orders_CustomerID
check (CustomerID like 'S-[0-9][0-9][0-9]'),

SubTotal money not null
constraint chk_Orders_SubTotal 
CHECK (SubTotal > 0),

DiscountRate money not null
constraint chk_Orders_DiscountRate
check (DiscountRate >= 0),

TaxRate as (SubTotal * 0.02),

DeliveryCharges money not null
constraint chk_Orders_DeliveryCharges
check (DeliveryCharges='3000' or DeliveryCharges='0' or DeliveryCharges='1500'),

Total as ((SubTotal+(SubTotal * 0.02)+DeliveryCharges)-DiscountRate)
)
drop table orderSch.Orders

insert into orderSch.Orders values	('LBS-00001','10/01/2022','IDN-003','Of-03','S-002',275500,11020,1500)
insert into orderSch.Orders values	('LBS-00002','10/02/2022','IDN-008','Of-08','S-001',370500,14820,1500)
insert into orderSch.Orders values	('LBS-00003','10/03/2022','IDN-004','Of-05','S-006',203500,8140,1500)
insert into orderSch.Orders values	('LBS-00004','10/04/2022','IDN-010','Of-03','S-011',151500,0,1500)
insert into orderSch.Orders values	('LBS-00005','10/05/2022','IDN-003','Of-07','S-009',791000,47460,1500)
insert into orderSch.Orders values	('LBS-00006','10/06/2022','IDN-008','Of-02','S-014',88900,0,1500)
insert into orderSch.Orders values	('LBS-00007','10/07/2022','IDN-003','Of-10','S-004',532000,31920,1500)
insert into orderSch.Orders values	('LBS-00008','10/08/2022','IDN-001','Of-08','S-017',447000,17880,1500)
insert into orderSch.Orders values	('LBS-00009','10/09/2022','IDN-003','Of-06','S-010',316200,12648,1500)
insert into orderSch.Orders values	('LBS-00010','10/10/2022','IDN-006','Of-07','S-007',276000,11040,1500)
insert into orderSch.Orders values	('LBS-00011','10/11/2022','IDN-002','Of-02','S-020',290000,11600,1500)
insert into orderSch.Orders values	('LBS-00012','10/12/2022','IDN-004','Of-06','S-003',336000,13440,1500)
insert into orderSch.Orders values	('LBS-00013','10/13/2022','IDN-004','Of-08','S-002',57500,0,1500)
insert into orderSch.Orders values	('LBS-00014','10/14/2022','IDN-006','Of-09','S-004',130000,0,1500)
insert into orderSch.Orders values	('LBS-00015','10/15/2022','IDN-003','Of-06','S-011',433000,17320,1500)
insert into orderSch.Orders values	('LBS-00016','10/16/2022','IDN-007','Of-06','S-014',98200,0,1500)
insert into orderSch.Orders values	('LBS-00017','10/17/2022','IDN-006','Of-09','S-009',334000,13360,1500)
insert into orderSch.Orders values	('LBS-00018','10/18/2022','IDN-003','Of-05','S-018',64500,0,1500)
insert into orderSch.Orders values	('LBS-00019','10/19/2022','IDN-009','Of-10','S-001',260000,10400,1500)
insert into orderSch.Orders values	('LBS-00020','10/20/2022','IDN-003','Of-09','S-015',94500,0,1500)
insert into orderSch.Orders values	('LBS-00021','10/21/2022','IDN-010','Of-06','S-010',203000,8120,1500)
insert into orderSch.Orders values	('LBS-00022','10/22/2022','IDN-006','Of-01','S-019',91800,0,1500)
insert into orderSch.Orders values	('LBS-00023','10/23/2022','IDN-003','Of-01','S-005',760000,45600,1500)
insert into orderSch.Orders values	('LBS-00024','10/24/2022','IDN-002','Of-05','S-020',96500,0,1500)
insert into orderSch.Orders values	('LBS-00025','10/25/2022','IDN-008','Of-08','S-019',67500,0,1500)
insert into orderSch.Orders values	('LBS-00026','10/26/2022','IDN-003','Of-03','S-004',142000,0,1500)
insert into orderSch.Orders values	('LBS-00027','10/27/2022','IDN-001','Of-05','S-017',154500,0,1500)
insert into orderSch.Orders values	('LBS-00028','10/28/2022','IDN-008','Of-09','S-013',83000,0,1500)
insert into orderSch.Orders values	('LBS-00029','10/29/2022','IDN-007','Of-09','S-011',413000,16520,1500)
insert into orderSch.Orders values	('LBS-00030','10/30/2022','IDN-009','Of-02','S-003',432000,17280,1500)
insert into orderSch.Orders values	('LBS-00031','10/31/2022','IDN-010','Of-06','S-007',669000,40140,1500)
insert into orderSch.Orders values	('LBS-00032','11/01/2022','IDN-003','Of-09','S-006',119000,0,1500)
insert into orderSch.Orders values	('LBS-00033','11/02/2022','IDN-005','Of-05','S-008',551000,33060,1500)
insert into orderSch.Orders values	('LBS-00034','11/03/2022','IDN-006','Of-08','S-001',45500,0,1500)
insert into orderSch.Orders values	('LBS-00035','11/04/2022','IDN-003','Of-01','S-004',250000,10000,1500)
insert into orderSch.Orders values	('LBS-00036','11/05/2022','IDN-001','Of-08','S-017',501300,30078,1500)
insert into orderSch.Orders values	('LBS-00037','11/06/2022','IDN-001','Of-04','S-002',176000,0,1500)
insert into orderSch.Orders values	('LBS-00038','11/07/2022','IDN-003','Of-06','S-016',519000,31140,1500)
insert into orderSch.Orders values	('LBS-00039','11/08/2022','IDN-008','Of-07','S-012',110500,0,1500)
insert into orderSch.Orders values	('LBS-00040','11/09/2022','IDN-003','Of-08','S-015',1010000,60600,1500)
insert into orderSch.Orders values	('LBS-00041','11/10/2022','IDN-002','Of-04','S-003',177500,0,1500)
insert into orderSch.Orders values	('LBS-00042','11/11/2022','IDN-007','Of-03','S-010',116500,0,1500)
insert into orderSch.Orders values	('LBS-00043','11/12/2022','IDN-003','Of-06','S-019',196500,0,1500)
insert into orderSch.Orders values	('LBS-00044','11/13/2022','IDN-008','Of-09','S-005',486400,19456,1500)
insert into orderSch.Orders values	('LBS-00045','11/14/2022','IDN-007','Of-07','S-014',878000,52680,1500)
insert into orderSch.Orders values	('LBS-00046','11/15/2022','IDN-004','Of-02','S-002',147000,0,1500)
insert into orderSch.Orders values	('LBS-00047','11/16/2022','IDN-010','Of-01','S-001',143000,0,1500)
insert into orderSch.Orders values	('LBS-00048','11/17/2022','IDN-001','Of-02','S-015',721000,43260,1500)
insert into orderSch.Orders values	('LBS-00049','11/18/2022','IDN-003','Of-08','S-001',59000,0,1500)
insert into orderSch.Orders values	('LBS-00050','11/19/2022','IDN-002','Of-07','S-008',154000,0,1500)
insert into orderSch.Orders values	('LBS-00051','11/20/2022','IDN-004','Of-10','S-006',220300,8812,1500)
insert into orderSch.Orders values	('LBS-00052','11/21/2022','IDN-003','Of-03','S-016',132000,0,1500)
insert into orderSch.Orders values	('LBS-00053','11/22/2022','IDN-009','Of-07','S-003',225000,9000,1500)
insert into orderSch.Orders values	('LBS-00054','11/23/2022','IDN-001','Of-04','S-014',35000,0,1500)
insert into orderSch.Orders values	('LBS-00055','11/24/2022','IDN-003','Of-03','S-018',287500,11500,1500)
insert into orderSch.Orders values	('LBS-00056','11/25/2022','IDN-004','Of-01','S-012',148500,0,1500)
insert into orderSch.Orders values	('LBS-00057','11/26/2022','IDN-001','Of-08','S-001',126000,0,1500)
insert into orderSch.Orders values	('LBS-00058','11/27/2022','IDN-007','Of-04','S-020',100000,0,1500)
insert into orderSch.Orders values	('LBS-00059','11/28/2022','IDN-003','Of-05','S-001',116200,0,1500)
insert into orderSch.Orders values	('LBS-00060','11/29/2022','IDN-010','Of-02','S-013',246000,9840,1500)
insert into orderSch.Orders values	('LBS-00061','11/30/2022','IDN-006','Of-10','S-018',70500,0,1500)
insert into orderSch.Orders values	('LBS-00062','12/01/2022','IDN-008','Of-09','S-005',147000,0,1500)
insert into orderSch.Orders values	('LBS-00063','12/02/2022','IDN-003','Of-04','S-019',50000,0,1500)
insert into orderSch.Orders values	('LBS-00064','12/03/2022','IDN-002','Of-05','S-016',111000,0,1500)
insert into orderSch.Orders values	('LBS-00065','12/04/2022','IDN-003','Of-01','S-008',599600,35976,1500)
insert into orderSch.Orders values	('LBS-00066','12/05/2022','IDN-005','Of-06','S-007',168000,0,1500)
insert into orderSch.Orders values	('LBS-00067','12/06/2022','IDN-003','Of-07','S-006',529000,31740,1500)
insert into orderSch.Orders values	('LBS-00068','12/07/2022','IDN-006','Of-01','S-009',117000,0,1500)
insert into orderSch.Orders values	('LBS-00069','12/08/2022','IDN-002','Of-04','S-020',220000,8800,1500)
insert into orderSch.Orders values	('LBS-00070','12/09/2022','IDN-007','Of-05','S-001',71500,0,1500)
insert into orderSch.Orders values	('LBS-00071','12/10/2022','IDN-005','Of-06','S-012',73500,0,1500)
insert into orderSch.Orders values	('LBS-00072','12/11/2022','IDN-002','Of-01','S-001',56500,0,1500)
insert into orderSch.Orders values	('LBS-00073','12/12/2022','IDN-003','Of-03','S-017',104200,0,1500)
insert into orderSch.Orders values	('LBS-00074','12/13/2022','IDN-005','Of-01','S-013',307000,12280,1500)
insert into orderSch.Orders values	('LBS-00075','12/14/2022','IDN-009','Of-04','S-005',270000,10800,1500)
insert into orderSch.Orders values	('LBS-00076','12/15/2022','IDN-003','Of-01','S-011',101500,0,1500)
insert into orderSch.Orders values	('LBS-00077','12/16/2022','IDN-002','Of-10','S-001',726000,43560,1500)
insert into orderSch.Orders values	('LBS-00078','12/17/2022','IDN-004','Of-10','S-015',91000,0,1500)
insert into orderSch.Orders values	('LBS-00079','12/18/2022','IDN-009','Of-02','S-017',248000,9920,1500)
insert into orderSch.Orders values	('LBS-00080','12/19/2022','IDN-005','Of-01','S-001',204200,8168,1500)
insert into orderSch.Orders values	('LBS-00081','12/20/2022','IDN-010','Of-03','S-010',139000,0,1500)
insert into orderSch.Orders values	('LBS-00082','12/21/2022','IDN-005','Of-01','S-018',640000,38400,1500)
insert into orderSch.Orders values	('LBS-00083','12/22/2022','IDN-003','Of-10','S-019',101500,0,1500)
insert into orderSch.Orders values	('LBS-00084','12/23/2022','IDN-001','Of-04','S-008',115500,0,1500)
insert into orderSch.Orders values	('LBS-00085','12/24/2022','IDN-005','Of-03','S-016',560000,33600,1500)
insert into orderSch.Orders values	('LBS-00086','12/25/2022','IDN-009','Of-09','S-012',107500,0,1500)
insert into orderSch.Orders values	('LBS-00087','12/26/2022','IDN-002','Of-03','S-001',199500,0,1500)
insert into orderSch.Orders values	('LBS-00088','12/27/2022','IDN-010','Of-01','S-013',91500,0,1500)
insert into orderSch.Orders values	('LBS-00089','12/28/2022','IDN-003','Of-07','S-007',310400,12416,1500)
insert into orderSch.Orders values	('LBS-00090','12/29/2022','IDN-009','Of-01','S-009',467000,18680,1500)



-------------------------------------------------------------------------------


create table orderSch.Orderdetail
(
OrderNo char(10) not null
constraint fk_Orders_OrderNo
Foreign Key(OrderNo)
References orderSch.Orders(OrderNo)
constraint chk_Orderdetail_OrderNo
check (OrderNo like 'LBS-[0-9][0-9][0-9][0-9][0-9]'),

ItemCode char(6) not null
constraint fk_Item_ItemCode
Foreign Key(ItemCode)
References sale.Item(ItemCode)
constraint chk_Orderdetail_ItemCode
check (ItemCode like 'LB-C[0-9][0-9]'),

Qty int not null
constraint chk_Orderdetail_Qty
check (Qty>0),

Amount money not null
constraint chk_Orderdetail_Amount
check (Amount>0),
)
drop table orderSch.Orderdetail

alter table orderSch.Orderdetail
add constraint pk_Orderdetail_OrderNo_ItemCode
Primary key(OrderNo,ItemCode)


insert into orderSch.Orderdetail values	('LBS-00001','LB-C45',2,14000)
insert into orderSch.Orderdetail values	('LBS-00001','LB-C12',1,1500)
insert into orderSch.Orderdetail values	('LBS-00001','LB-C07',10,250000)
insert into orderSch.Orderdetail values	('LBS-00001','LB-C11',4,10000)
insert into orderSch.Orderdetail values	('LBS-00002','LB-C45',5,35000)
insert into orderSch.Orderdetail values	('LBS-00002','LB-C05',7,17500)
insert into orderSch.Orderdetail values	('LBS-00002','LB-C93',7,315000)
insert into orderSch.Orderdetail values	('LBS-00002','LB-C12',2,3000)
insert into orderSch.Orderdetail values	('LBS-00003','LB-C93',6,120000)
insert into orderSch.Orderdetail values	('LBS-00003','LB-C03',7,24500)
insert into orderSch.Orderdetail values	('LBS-00003','LB-C10',5,35000)
insert into orderSch.Orderdetail values	('LBS-00003','LB-C16',4,24000)
insert into orderSch.Orderdetail values	('LBS-00004','LB-C06',1,20000)
insert into orderSch.Orderdetail values	('LBS-00004','LB-C24',12,24000)
insert into orderSch.Orderdetail values	('LBS-00004','LB-C27',2,80000)
insert into orderSch.Orderdetail values	('LBS-00004','LB-C19',11,27500)
insert into orderSch.Orderdetail values	('LBS-00005','LB-C14',1,2000)
insert into orderSch.Orderdetail values	('LBS-00005','LB-C09',45,675000)
insert into orderSch.Orderdetail values	('LBS-00005','LB-C21',20,24000)
insert into orderSch.Orderdetail values	('LBS-00005','LB-C25',2,90000)
insert into orderSch.Orderdetail values	('LBS-00006','LB-C19',4,10000)
insert into orderSch.Orderdetail values	('LBS-00006','LB-C17',6,60000)
insert into orderSch.Orderdetail values	('LBS-00006','LB-C21',7,8400)
insert into orderSch.Orderdetail values	('LBS-00006','LB-C07',3,10500)
insert into orderSch.Orderdetail values	('LBS-00007','LB-C07',2,7000)
insert into orderSch.Orderdetail values	('LBS-00007','LB-C22',2,150000)
insert into orderSch.Orderdetail values	('LBS-00007','LB-C18',10,30000)
insert into orderSch.Orderdetail values	('LBS-00007','LB-C46',15,345000)
insert into orderSch.Orderdetail values	('LBS-00008','LB-C46',1,23000)
insert into orderSch.Orderdetail values	('LBS-00008','LB-C14',14,28000)
insert into orderSch.Orderdetail values	('LBS-00008','LB-C16',21,126000)
insert into orderSch.Orderdetail values	('LBS-00008','LB-C08',6,270000)
insert into orderSch.Orderdetail values	('LBS-00009','LB-C01',14,112000)
insert into orderSch.Orderdetail values	('LBS-00009','LB-C93',1,45000)
insert into orderSch.Orderdetail values	('LBS-00009','LB-C21',16,19200)
insert into orderSch.Orderdetail values	('LBS-00009','LB-C06',7,140000)
insert into orderSch.Orderdetail values	('LBS-00010','LB-C15',5,75000)
insert into orderSch.Orderdetail values	('LBS-00010','LB-C45',18,126000)
insert into orderSch.Orderdetail values	('LBS-00010','LB-C13',14,63000)
insert into orderSch.Orderdetail values	('LBS-00010','LB-C02',3,12000)
insert into orderSch.Orderdetail values	('LBS-00011','LB-C03',5,17500)
insert into orderSch.Orderdetail values	('LBS-00011','LB-C04',7,17500)
insert into orderSch.Orderdetail values	('LBS-00011','LB-C05',14,35000)
insert into orderSch.Orderdetail values	('LBS-00011','LB-C06',11,220000)
insert into orderSch.Orderdetail values	('LBS-00012','LB-C07',2,50000)
insert into orderSch.Orderdetail values	('LBS-00012','LB-C08',4,180000)
insert into orderSch.Orderdetail values	('LBS-00012','LB-C09',1,15000)
insert into orderSch.Orderdetail values	('LBS-00012','LB-C10',13,91000)
insert into orderSch.Orderdetail values	('LBS-00013','LB-C11',10,25000)
insert into orderSch.Orderdetail values	('LBS-00013','LB-C12',7,10500)
insert into orderSch.Orderdetail values	('LBS-00013','LB-C13',4,18000)
insert into orderSch.Orderdetail values	('LBS-00013','LB-C14',2,4000)
insert into orderSch.Orderdetail values	('LBS-00014','LB-C15',3,45000)
insert into orderSch.Orderdetail values	('LBS-00014','LB-C16',4,24000)
insert into orderSch.Orderdetail values	('LBS-00014','LB-C17',4,40000)
insert into orderSch.Orderdetail values	('LBS-00014','LB-C18',7,21000)
insert into orderSch.Orderdetail values	('LBS-00015','LB-C19',2,5000)
insert into orderSch.Orderdetail values	('LBS-00015','LB-C20',7,56000)
insert into orderSch.Orderdetail values	('LBS-00015','LB-C21',10,12000)
insert into orderSch.Orderdetail values	('LBS-00015','LB-C01',45,360000)
insert into orderSch.Orderdetail values	('LBS-00016','LB-C21',1,1200)
insert into orderSch.Orderdetail values	('LBS-00016','LB-C22',1,75000)
insert into orderSch.Orderdetail values	('LBS-00016','LB-C23',4,8000)
insert into orderSch.Orderdetail values	('LBS-00016','LB-C24',7,14000)
insert into orderSch.Orderdetail values	('LBS-00017','LB-C25',2,90000)
insert into orderSch.Orderdetail values	('LBS-00017','LB-C26',7,140000)
insert into orderSch.Orderdetail values	('LBS-00017','LB-C27',1,40000)
insert into orderSch.Orderdetail values	('LBS-00017','LB-C01',8,64000)
insert into orderSch.Orderdetail values	('LBS-00018','LB-C02',2,8000)
insert into orderSch.Orderdetail values	('LBS-00018','LB-C03',4,14000)
insert into orderSch.Orderdetail values	('LBS-00018','LB-C04',13,32500)
insert into orderSch.Orderdetail values	('LBS-00018','LB-C05',4,10000)
insert into orderSch.Orderdetail values	('LBS-00019','LB-C06',3,60000)
insert into orderSch.Orderdetail values	('LBS-00019','LB-C07',2,50000)
insert into orderSch.Orderdetail values	('LBS-00019','LB-C08',1,45000)
insert into orderSch.Orderdetail values	('LBS-00019','LB-C09',7,105000)
insert into orderSch.Orderdetail values	('LBS-00020','LB-C10',2,14000)
insert into orderSch.Orderdetail values	('LBS-00020','LB-C11',7,17500)
insert into orderSch.Orderdetail values	('LBS-00020','LB-C12',24,36000)
insert into orderSch.Orderdetail values	('LBS-00020','LB-C13',6,27000)
insert into orderSch.Orderdetail values	('LBS-00021','LB-C14',2,4000)
insert into orderSch.Orderdetail values	('LBS-00021','LB-C15',7,105000)
insert into orderSch.Orderdetail values	('LBS-00021','LB-C16',9,54000)
insert into orderSch.Orderdetail values	('LBS-00021','LB-C17',4,40000)
insert into orderSch.Orderdetail values	('LBS-00022','LB-C18',4,12000)
insert into orderSch.Orderdetail values	('LBS-00022','LB-C19',14,35000)
insert into orderSch.Orderdetail values	('LBS-00022','LB-C20',5,40000)
insert into orderSch.Orderdetail values	('LBS-00022','LB-C21',4,4800)
insert into orderSch.Orderdetail values	('LBS-00023','LB-C45',15,105000)
insert into orderSch.Orderdetail values	('LBS-00023','LB-C46',20,460000)
insert into orderSch.Orderdetail values	('LBS-00023','LB-C93',1,45000)
insert into orderSch.Orderdetail values	('LBS-00023','LB-C22',2,150000)
insert into orderSch.Orderdetail values	('LBS-00024','LB-C01',3,24000)
insert into orderSch.Orderdetail values	('LBS-00024','LB-C02',7,28000)
insert into orderSch.Orderdetail values	('LBS-00024','LB-C03',7,24500)
insert into orderSch.Orderdetail values	('LBS-00024','LB-C04',8,20000)
insert into orderSch.Orderdetail values	('LBS-00025','LB-C05',14,35000)
insert into orderSch.Orderdetail values	('LBS-00025','LB-C06',3,60000)
insert into orderSch.Orderdetail values	('LBS-00025','LB-C07',16,400000)
insert into orderSch.Orderdetail values	('LBS-00025','LB-C08',4,180000)
insert into orderSch.Orderdetail values	('LBS-00026','LB-C09',5,75000)
insert into orderSch.Orderdetail values	('LBS-00026','LB-C10',2,14000)
insert into orderSch.Orderdetail values	('LBS-00026','LB-C11',8,20000)
insert into orderSch.Orderdetail values	('LBS-00026','LB-C12',22,33000)
insert into orderSch.Orderdetail values	('LBS-00027','LB-C13',5,22500)
insert into orderSch.Orderdetail values	('LBS-00027','LB-C14',3,6000)
insert into orderSch.Orderdetail values	('LBS-00027','LB-C15',8,120000)
insert into orderSch.Orderdetail values	('LBS-00027','LB-C16',1,6000)
insert into orderSch.Orderdetail values	('LBS-00028','LB-C17',5,50000)
insert into orderSch.Orderdetail values	('LBS-00028','LB-C18',5,15000)
insert into orderSch.Orderdetail values	('LBS-00028','LB-C19',4,10000)
insert into orderSch.Orderdetail values	('LBS-00028','LB-C20',1,8000)
insert into orderSch.Orderdetail values	('LBS-00029','LB-C21',5,6000)
insert into orderSch.Orderdetail values	('LBS-00029','LB-C22',5,375000)
insert into orderSch.Orderdetail values	('LBS-00029','LB-C23',15,30000)
insert into orderSch.Orderdetail values	('LBS-00029','LB-C24',1,2000)
insert into orderSch.Orderdetail values	('LBS-00030','LB-C25',5,225000)
insert into orderSch.Orderdetail values	('LBS-00030','LB-C26',4,80000)
insert into orderSch.Orderdetail values	('LBS-00030','LB-C27',3,120000)
insert into orderSch.Orderdetail values	('LBS-00030','LB-C45',1,7000)
insert into orderSch.Orderdetail values	('LBS-00031','LB-C46',21,483000)
insert into orderSch.Orderdetail values	('LBS-00031','LB-C93',2,90000)
insert into orderSch.Orderdetail values	('LBS-00031','LB-C01',8,64000)
insert into orderSch.Orderdetail values	('LBS-00031','LB-C02',8,32000)
insert into orderSch.Orderdetail values	('LBS-00032','LB-C03',9,31500)
insert into orderSch.Orderdetail values	('LBS-00032','LB-C04',17,42500)
insert into orderSch.Orderdetail values	('LBS-00032','LB-C05',2,5000)
insert into orderSch.Orderdetail values	('LBS-00032','LB-C06',2,40000)
insert into orderSch.Orderdetail values	('LBS-00033','LB-C07',9,225000)
insert into orderSch.Orderdetail values	('LBS-00033','LB-C08',4,180000)
insert into orderSch.Orderdetail values	('LBS-00033','LB-C09',6,90000)
insert into orderSch.Orderdetail values	('LBS-00033','LB-C10',8,56000)
insert into orderSch.Orderdetail values	('LBS-00034','LB-C11',2,5000)
insert into orderSch.Orderdetail values	('LBS-00034','LB-C12',6,9000)
insert into orderSch.Orderdetail values	('LBS-00034','LB-C13',3,13500)
insert into orderSch.Orderdetail values	('LBS-00034','LB-C14',9,18000)
insert into orderSch.Orderdetail values	('LBS-00035','LB-C15',8,120000)
insert into orderSch.Orderdetail values	('LBS-00035','LB-C16',12,72000)
insert into orderSch.Orderdetail values	('LBS-00035','LB-C17',4,40000)
insert into orderSch.Orderdetail values	('LBS-00035','LB-C18',6,18000)
insert into orderSch.Orderdetail values	('LBS-00036','LB-C19',11,27500)
insert into orderSch.Orderdetail values	('LBS-00036','LB-C20',8,64000)
insert into orderSch.Orderdetail values	('LBS-00036','LB-C21',29,34800)
insert into orderSch.Orderdetail values	('LBS-00036','LB-C22',5,375000)
insert into orderSch.Orderdetail values	('LBS-00037','LB-C23',4,8000)
insert into orderSch.Orderdetail values	('LBS-00037','LB-C24',9,18000)
insert into orderSch.Orderdetail values	('LBS-00037','LB-C25',2,90000)
insert into orderSch.Orderdetail values	('LBS-00037','LB-C26',3,60000)
insert into orderSch.Orderdetail values	('LBS-00038','LB-C27',8,320000)
insert into orderSch.Orderdetail values	('LBS-00038','LB-C45',9,63000)
insert into orderSch.Orderdetail values	('LBS-00038','LB-C46',2,46000)
insert into orderSch.Orderdetail values	('LBS-00038','LB-C93',2,90000)
insert into orderSch.Orderdetail values	('LBS-00039','LB-C01',3,24000)
insert into orderSch.Orderdetail values	('LBS-00039','LB-C02',18,72000)
insert into orderSch.Orderdetail values	('LBS-00039','LB-C03',2,7000)
insert into orderSch.Orderdetail values	('LBS-00039','LB-C04',3,7500)
insert into orderSch.Orderdetail values	('LBS-00040','LB-C05',4,10000)
insert into orderSch.Orderdetail values	('LBS-00040','LB-C06',23,460000)
insert into orderSch.Orderdetail values	('LBS-00040','LB-C07',9,225000)
insert into orderSch.Orderdetail values	('LBS-00040','LB-C08',7,315000)
insert into orderSch.Orderdetail values	('LBS-00041','LB-C09',7,105000)
insert into orderSch.Orderdetail values	('LBS-00041','LB-C10',9,63000)
insert into orderSch.Orderdetail values	('LBS-00041','LB-C11',2,5000)
insert into orderSch.Orderdetail values	('LBS-00041','LB-C12',3,4500)
insert into orderSch.Orderdetail values	('LBS-00042','LB-C13',1,4500)
insert into orderSch.Orderdetail values	('LBS-00042','LB-C14',8,16000)
insert into orderSch.Orderdetail values	('LBS-00042','LB-C15',2,30000)
insert into orderSch.Orderdetail values	('LBS-00042','LB-C16',11,66000)
insert into orderSch.Orderdetail values	('LBS-00043','LB-C17',10,100000)
insert into orderSch.Orderdetail values	('LBS-00043','LB-C18',6,18000)
insert into orderSch.Orderdetail values	('LBS-00043','LB-C19',9,22500)
insert into orderSch.Orderdetail values	('LBS-00043','LB-C20',7,56000)
insert into orderSch.Orderdetail values	('LBS-00044','LB-C21',2,2400)
insert into orderSch.Orderdetail values	('LBS-00044','LB-C22',6,450000)
insert into orderSch.Orderdetail values	('LBS-00044','LB-C23',8,16000)
insert into orderSch.Orderdetail values	('LBS-00044','LB-C24',9,18000)
insert into orderSch.Orderdetail values	('LBS-00045','LB-C25',7,315000)
insert into orderSch.Orderdetail values	('LBS-00045','LB-C26',3,60000)
insert into orderSch.Orderdetail values	('LBS-00045','LB-C27',11,440000)
insert into orderSch.Orderdetail values	('LBS-00045','LB-C45',9,63000)
insert into orderSch.Orderdetail values	('LBS-00046','LB-C46',2,46000)
insert into orderSch.Orderdetail values	('LBS-00046','LB-C93',1,45000)
insert into orderSch.Orderdetail values	('LBS-00046','LB-C01',6,48000)
insert into orderSch.Orderdetail values	('LBS-00046','LB-C02',2,8000)
insert into orderSch.Orderdetail values	('LBS-00047','LB-C03',8,28000)
insert into orderSch.Orderdetail values	('LBS-00047','LB-C04',8,20000)
insert into orderSch.Orderdetail values	('LBS-00047','LB-C05',6,15000)
insert into orderSch.Orderdetail values	('LBS-00047','LB-C06',4,80000)
insert into orderSch.Orderdetail values	('LBS-00048','LB-C07',6,150000)
insert into orderSch.Orderdetail values	('LBS-00048','LB-C08',9,405000)
insert into orderSch.Orderdetail values	('LBS-00048','LB-C09',5,75000)
insert into orderSch.Orderdetail values	('LBS-00048','LB-C10',13,91000)
insert into orderSch.Orderdetail values	('LBS-00049','LB-C11',8,20000)
insert into orderSch.Orderdetail values	('LBS-00049','LB-C12',1,1500)
insert into orderSch.Orderdetail values	('LBS-00049','LB-C13',7,31500)
insert into orderSch.Orderdetail values	('LBS-00049','LB-C14',3,6000)
insert into orderSch.Orderdetail values	('LBS-00050','LB-C15',4,60000)
insert into orderSch.Orderdetail values	('LBS-00050','LB-C16',6,36000)
insert into orderSch.Orderdetail values	('LBS-00050','LB-C17',4,40000)
insert into orderSch.Orderdetail values	('LBS-00050','LB-C18',6,18000)
insert into orderSch.Orderdetail values	('LBS-00051','LB-C19',7,17500)
insert into orderSch.Orderdetail values	('LBS-00051','LB-C20',6,48000)
insert into orderSch.Orderdetail values	('LBS-00051','LB-C21',4,4800)
insert into orderSch.Orderdetail values	('LBS-00051','LB-C22',2,150000)
insert into orderSch.Orderdetail values	('LBS-00052','LB-C23',3,6000)
insert into orderSch.Orderdetail values	('LBS-00052','LB-C24',8,16000)
insert into orderSch.Orderdetail values	('LBS-00052','LB-C25',2,90000)
insert into orderSch.Orderdetail values	('LBS-00052','LB-C26',1,20000)
insert into orderSch.Orderdetail values	('LBS-00053','LB-C27',3,120000)
insert into orderSch.Orderdetail values	('LBS-00053','LB-C45',2,14000)
insert into orderSch.Orderdetail values	('LBS-00053','LB-C46',2,46000)
insert into orderSch.Orderdetail values	('LBS-00053','LB-C93',1,45000)
insert into orderSch.Orderdetail values	('LBS-00054','LB-C01',1,8000)
insert into orderSch.Orderdetail values	('LBS-00054','LB-C02',1,4000)
insert into orderSch.Orderdetail values	('LBS-00054','LB-C03',3,10500)
insert into orderSch.Orderdetail values	('LBS-00054','LB-C04',5,12500)
insert into orderSch.Orderdetail values	('LBS-00055','LB-C05',5,12500)
insert into orderSch.Orderdetail values	('LBS-00055','LB-C06',2,40000)
insert into orderSch.Orderdetail values	('LBS-00055','LB-C07',4,100000)
insert into orderSch.Orderdetail values	('LBS-00055','LB-C08',3,135000)
insert into orderSch.Orderdetail values	('LBS-00056','LB-C09',8,120000)
insert into orderSch.Orderdetail values	('LBS-00056','LB-C10',2,14000)
insert into orderSch.Orderdetail values	('LBS-00056','LB-C11',4,10000)
insert into orderSch.Orderdetail values	('LBS-00056','LB-C12',3,4500)
insert into orderSch.Orderdetail values	('LBS-00057','LB-C13',4,18000)
insert into orderSch.Orderdetail values	('LBS-00057','LB-C14',6,12000)
insert into orderSch.Orderdetail values	('LBS-00057','LB-C15',4,60000)
insert into orderSch.Orderdetail values	('LBS-00057','LB-C16',6,36000)
insert into orderSch.Orderdetail values	('LBS-00058','LB-C17',4,40000)
insert into orderSch.Orderdetail values	('LBS-00058','LB-C18',6,18000)
insert into orderSch.Orderdetail values	('LBS-00058','LB-C19',4,10000)
insert into orderSch.Orderdetail values	('LBS-00058','LB-C20',4,32000)
insert into orderSch.Orderdetail values	('LBS-00059','LB-C21',6,7200)
insert into orderSch.Orderdetail values	('LBS-00059','LB-C22',1,75000)
insert into orderSch.Orderdetail values	('LBS-00059','LB-C23',8,16000)
insert into orderSch.Orderdetail values	('LBS-00059','LB-C24',9,18000)
insert into orderSch.Orderdetail values	('LBS-00060','LB-C25',3,135000)
insert into orderSch.Orderdetail values	('LBS-00060','LB-C26',4,80000)
insert into orderSch.Orderdetail values	('LBS-00060','LB-C27',6,240000)
insert into orderSch.Orderdetail values	('LBS-00060','LB-C45',2,14000)
insert into orderSch.Orderdetail values	('LBS-00061','LB-C46',1,23000)
insert into orderSch.Orderdetail values	('LBS-00061','LB-C93',3,135000)
insert into orderSch.Orderdetail values	('LBS-00061','LB-C01',8,64000)
insert into orderSch.Orderdetail values	('LBS-00061','LB-C02',6,24000)
insert into orderSch.Orderdetail values	('LBS-00062','LB-C03',3,10500)
insert into orderSch.Orderdetail values	('LBS-00062','LB-C04',4,10000)
insert into orderSch.Orderdetail values	('LBS-00062','LB-C05',4,10000)
insert into orderSch.Orderdetail values	('LBS-00062','LB-C06',2,40000)
insert into orderSch.Orderdetail values	('LBS-00063','LB-C07',2,50000)
insert into orderSch.Orderdetail values	('LBS-00063','LB-C08',1,45000)
insert into orderSch.Orderdetail values	('LBS-00063','LB-C09',3,45000)
insert into orderSch.Orderdetail values	('LBS-00063','LB-C10',1,7000)
insert into orderSch.Orderdetail values	('LBS-00064','LB-C11',3,7500)
insert into orderSch.Orderdetail values	('LBS-00064','LB-C12',5,7500)
insert into orderSch.Orderdetail values	('LBS-00064','LB-C13',6,27000)
insert into orderSch.Orderdetail values	('LBS-00064','LB-C14',4,8000)
insert into orderSch.Orderdetail values	('LBS-00065','LB-C15',3,45000)
insert into orderSch.Orderdetail values	('LBS-00065','LB-C16',4,24000)
insert into orderSch.Orderdetail values	('LBS-00065','LB-C17',3,30000)
insert into orderSch.Orderdetail values	('LBS-00065','LB-C18',4,12000)
insert into orderSch.Orderdetail values	('LBS-00066','LB-C19',6,15000)
insert into orderSch.Orderdetail values	('LBS-00066','LB-C20',7,56000)
insert into orderSch.Orderdetail values	('LBS-00066','LB-C21',3,3600)
insert into orderSch.Orderdetail values	('LBS-00066','LB-C22',7,525000)
insert into orderSch.Orderdetail values	('LBS-00067','LB-C23',3,6000)
insert into orderSch.Orderdetail values	('LBS-00067','LB-C24',16,32000)
insert into orderSch.Orderdetail values	('LBS-00067','LB-C25',2,90000)
insert into orderSch.Orderdetail values	('LBS-00067','LB-C26',2,40000)
insert into orderSch.Orderdetail values	('LBS-00068','LB-C27',6,240000)
insert into orderSch.Orderdetail values	('LBS-00068','LB-C45',12,84000)
insert into orderSch.Orderdetail values	('LBS-00068','LB-C46',5,115000)
insert into orderSch.Orderdetail values	('LBS-00068','LB-C93',2,90000)
insert into orderSch.Orderdetail values	('LBS-00069','LB-C01',7,56000)
insert into orderSch.Orderdetail values	('LBS-00069','LB-C02',3,12000)
insert into orderSch.Orderdetail values	('LBS-00069','LB-C03',9,31500)
insert into orderSch.Orderdetail values	('LBS-00069','LB-C04',7,17500)
insert into orderSch.Orderdetail values	('LBS-00070','LB-C05',8,20000)
insert into orderSch.Orderdetail values	('LBS-00070','LB-C06',2,40000)
insert into orderSch.Orderdetail values	('LBS-00070','LB-C07',1,25000)
insert into orderSch.Orderdetail values	('LBS-00070','LB-C08',3,135000)
insert into orderSch.Orderdetail values	('LBS-00071','LB-C09',1,15000)
insert into orderSch.Orderdetail values	('LBS-00071','LB-C10',6,42000)
insert into orderSch.Orderdetail values	('LBS-00071','LB-C11',4,10000)
insert into orderSch.Orderdetail values	('LBS-00071','LB-C12',3,4500)
insert into orderSch.Orderdetail values	('LBS-00072','LB-C13',1,4500)
insert into orderSch.Orderdetail values	('LBS-00072','LB-C14',3,6000)
insert into orderSch.Orderdetail values	('LBS-00072','LB-C15',1,15000)
insert into orderSch.Orderdetail values	('LBS-00072','LB-C16',8,48000)
insert into orderSch.Orderdetail values	('LBS-00073','LB-C17',2,20000)
insert into orderSch.Orderdetail values	('LBS-00073','LB-C18',7,21000)
insert into orderSch.Orderdetail values	('LBS-00073','LB-C19',3,7500)
insert into orderSch.Orderdetail values	('LBS-00073','LB-C20',1,8000)
insert into orderSch.Orderdetail values	('LBS-00074','LB-C21',6,7200)
insert into orderSch.Orderdetail values	('LBS-00074','LB-C22',1,75000)
insert into orderSch.Orderdetail values	('LBS-00074','LB-C23',5,10000)
insert into orderSch.Orderdetail values	('LBS-00074','LB-C24',6,12000)
insert into orderSch.Orderdetail values	('LBS-00075','LB-C25',1,45000)
insert into orderSch.Orderdetail values	('LBS-00075','LB-C26',3,60000)
insert into orderSch.Orderdetail values	('LBS-00075','LB-C27',4,160000)
insert into orderSch.Orderdetail values	('LBS-00075','LB-C45',6,42000)
insert into orderSch.Orderdetail values	('LBS-00076','LB-C46',4,92000)
insert into orderSch.Orderdetail values	('LBS-00076','LB-C93',2,90000)
insert into orderSch.Orderdetail values	('LBS-00076','LB-C01',8,64000)
insert into orderSch.Orderdetail values	('LBS-00076','LB-C02',6,24000)
insert into orderSch.Orderdetail values	('LBS-00077','LB-C03',4,14000)
insert into orderSch.Orderdetail values	('LBS-00077','LB-C04',3,7500)
insert into orderSch.Orderdetail values	('LBS-00077','LB-C05',8,20000)
insert into orderSch.Orderdetail values	('LBS-00077','LB-C06',3,60000)
insert into orderSch.Orderdetail values	('LBS-00078','LB-C07',7,175000)
insert into orderSch.Orderdetail values	('LBS-00078','LB-C08',9,405000)
insert into orderSch.Orderdetail values	('LBS-00078','LB-C09',6,90000)
insert into orderSch.Orderdetail values	('LBS-00078','LB-C10',8,56000)
insert into orderSch.Orderdetail values	('LBS-00079','LB-C11',9,22500)
insert into orderSch.Orderdetail values	('LBS-00079','LB-C12',8,12000)
insert into orderSch.Orderdetail values	('LBS-00079','LB-C13',9,40500)
insert into orderSch.Orderdetail values	('LBS-00079','LB-C14',8,16000)
insert into orderSch.Orderdetail values	('LBS-00080','LB-C15',8,120000)
insert into orderSch.Orderdetail values	('LBS-00080','LB-C16',6,36000)
insert into orderSch.Orderdetail values	('LBS-00080','LB-C17',8,80000)
insert into orderSch.Orderdetail values	('LBS-00080','LB-C18',4,12000)
insert into orderSch.Orderdetail values	('LBS-00081','LB-C19',6,15000)
insert into orderSch.Orderdetail values	('LBS-00081','LB-C20',4,32000)
insert into orderSch.Orderdetail values	('LBS-00081','LB-C21',6,7200)
insert into orderSch.Orderdetail values	('LBS-00081','LB-C22',2,150000)
insert into orderSch.Orderdetail values	('LBS-00082','LB-C23',2,4000)
insert into orderSch.Orderdetail values	('LBS-00082','LB-C24',5,10000)
insert into orderSch.Orderdetail values	('LBS-00082','LB-C25',1,45000)
insert into orderSch.Orderdetail values	('LBS-00082','LB-C26',4,80000)
insert into orderSch.Orderdetail values	('LBS-00083','LB-C27',9,360000)
insert into orderSch.Orderdetail values	('LBS-00083','LB-C45',4,28000)
insert into orderSch.Orderdetail values	('LBS-00083','LB-C46',9,207000)
insert into orderSch.Orderdetail values	('LBS-00083','LB-C93',1,45000)
insert into orderSch.Orderdetail values	('LBS-00084','LB-C01',9,72000)
insert into orderSch.Orderdetail values	('LBS-00084','LB-C02',4,16000)
insert into orderSch.Orderdetail values	('LBS-00084','LB-C03',5,17500)
insert into orderSch.Orderdetail values	('LBS-00084','LB-C04',4,10000)
insert into orderSch.Orderdetail values	('LBS-00085','LB-C05',4,10000)
insert into orderSch.Orderdetail values	('LBS-00085','LB-C06',1,20000)
insert into orderSch.Orderdetail values	('LBS-00085','LB-C07',5,125000)
insert into orderSch.Orderdetail values	('LBS-00085','LB-C08',9,405000)
insert into orderSch.Orderdetail values	('LBS-00086','LB-C09',4,60000)
insert into orderSch.Orderdetail values	('LBS-00086','LB-C10',5,35000)
insert into orderSch.Orderdetail values	('LBS-00086','LB-C11',2,5000)
insert into orderSch.Orderdetail values	('LBS-00086','LB-C12',5,7500)
insert into orderSch.Orderdetail values	('LBS-00087','LB-C13',5,22500)
insert into orderSch.Orderdetail values	('LBS-00087','LB-C14',9,18000)
insert into orderSch.Orderdetail values	('LBS-00087','LB-C15',9,135000)
insert into orderSch.Orderdetail values	('LBS-00087','LB-C16',4,24000)
insert into orderSch.Orderdetail values	('LBS-00088','LB-C17',2,20000)
insert into orderSch.Orderdetail values	('LBS-00088','LB-C18',3,9000)
insert into orderSch.Orderdetail values	('LBS-00088','LB-C19',9,22500)
insert into orderSch.Orderdetail values	('LBS-00088','LB-C20',5,40000)
insert into orderSch.Orderdetail values	('LBS-00089','LB-C21',2,2400)
insert into orderSch.Orderdetail values	('LBS-00089','LB-C22',4,300000)
insert into orderSch.Orderdetail values	('LBS-00089','LB-C23',1,2000)
insert into orderSch.Orderdetail values	('LBS-00089','LB-C24',3,6000)
insert into orderSch.Orderdetail values	('LBS-00090','LB-C25',4,180000)
insert into orderSch.Orderdetail values	('LBS-00090','LB-C26',6,120000)
insert into orderSch.Orderdetail values	('LBS-00090','LB-C27',4,160000)
insert into orderSch.Orderdetail values	('LBS-00090','LB-C45',1,7000)


-----------------------------------------------------------------------------------


create schema sale

create table sale.Item
(
ItemCode char(6) not null
constraint pk_Item_ItemCode
primary key(ItemCode)
constraint chk_Item_ItemCode
check (ItemCode like 'LB-C[0-9][0-9]'),

Description varchar(40) not null,

Age varchar(8) not null
constraint chk_Item_Age
check (Age between 0 and 10),

UnitPrice money not null
constraint chk_Item_UnitPrice
check (UnitPrice > 0),

)
drop table sale.Item

alter table sale.item 
drop constraint chk_Item_Age

insert into sale.Item values('LB-C01','Daipers','0-2years',8000)
insert into sale.Item values('LB-C02','Daiper Cream','0-2years',4000)
insert into sale.Item values('LB-C03','Milk Bottle','0-1years',3500)
insert into sale.Item values('LB-C04','Baby socks','0-1years',2500)
insert into sale.Item values('LB-C05','Baby gloves','0-1years',2500)
insert into sale.Item values('LB-C06','Nan Milk Powder 500g','0-1years',20000)
insert into sale.Item values('LB-C07','Baby Mild set','0-3years',25000)
insert into sale.Item values('LB-C08','Bassinet','0-2years',45000)
insert into sale.Item values('LB-C09','Baby bathtub','1year',15000)
insert into sale.Item values('LB-C10','Baby Chair','0-2years',7000)
insert into sale.Item values('LB-C11','Bib','1year',2500)
insert into sale.Item values('LB-C12','Bottle brush','0-1years',1500)
insert into sale.Item values('LB-C13','Baby towel','0-2years',4500)
insert into sale.Item values('LB-C14','Newborn hat','0-1years',2000)
insert into sale.Item values('LB-C15','Blanket','0-2years',15000)
insert into sale.Item values('LB-C16','Swaddle','1year',6000)
insert into sale.Item values('LB-C17','Bunting bag','1year',10000)
insert into sale.Item values('LB-C18','Laundary detergent','1year',3000)
insert into sale.Item values('LB-C19','Baby wipes','0-1years',2500)
insert into sale.Item values('LB-C20','Bottle warmer','0-1years',8000)
insert into sale.Item values('LB-C21','Baby nail clipper','1year',1200)
insert into sale.Item values('LB-C22','Stoller','0-1year',75000)
insert into sale.Item values('LB-C23','Toothbrush','1year',2000)
insert into sale.Item values('LB-C24','Toothpaste','1year',2000)
insert into sale.Item values('LB-C25','Swing','0-2years',45000)
insert into sale.Item values('LB-C26','Toy storage','0-5years',20000)
insert into sale.Item values('LB-C27','Baby Mattress','0-3years',40000)
insert into sale.Item values('LB-C45','MoLo Pink dress','2years',7000)
insert into sale.Item values('LB-C46','MoLo Blue dress','4years',23000)
insert into sale.Item values('LB-C93','Car seat','3years',45000)


-------------------------------------------------------------------------------------------


create table sale.Staff
(
StaffID char(7) not null
constraint pk_Staff_StaffID
primary key(StaffID)
constraint chk_Staff_StaffID
check (StaffID like 'IDN-[0-9][0-9][0-9]'),

StaffName varchar(40) not null,
)

drop table sale.Staff

insert into sale.Staff values('IDN-001','Myint Myint')
insert into sale.Staff values('IDN-002','Hla Hla')
insert into sale.Staff values('IDN-003','Kyu Kyu')
insert into sale.Staff values('IDN-004','Aye Aye')
insert into sale.Staff values('IDN-005','Khin Khin')
insert into sale.Staff values('IDN-006','Myo Aung')
insert into sale.Staff values('IDN-007','Nay Htut')
insert into sale.Staff values('IDN-008','Nyein Chan')
insert into sale.Staff values('IDN-009','Kyaw Kyaw')
insert into sale.Staff values('IDN-010','Nyein Nyein')


-----------------------------------------------------------------------------------------

create table sale.Office
(
OfficeID char(5) not null
constraint pk_Office_OfficeID
primary key(OfficeID)
constraint chk_Office_OfficeID
check (OfficeID like 'Of-[0-9][0-9]'),

OfficeBranch varchar(30) not null,

OfficeNo varchar(10) not null,

OfficeTownship varchar(30) not null,

OfficeCity varchar(10) not null
constraint def_Office_OfficeCity
default'Yangon',

OfficePhone varchar(10) not null
constraint chk_Office_OfficePhone
check (OfficePhone like '0[1-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),

OfficeEmail varchar(40) not null
constraint chk_Office_OfficeEmail
check ( OfficeEmail like '%_@gmail.com'),
)

drop table sale.Office

alter table sale.Office
add constraint unq_Office_OfficePhone
unique(OfficePhone)

alter table sale.Office
add constraint unq_Office_OfficeEmail
unique(OfficeEmail)


insert into sale.Office values('Of-01','Mingalardon Branch','No-12', 'Mingalardon Township','Yangon','01-2233445','littlebabybr10@gmail.com')
insert into sale.Office values('Of-02','Ahlon Branch','No-53(A)', 'Ahlon Township','Yangon','09-6608265','littlebabybr2@gmail.com')
insert into sale.Office values('Of-03','Tanmwe Branch','No-16(C)', 'Tamwe Township','Yangon','01-5406975','littlebabybr3@gmail.com')
insert into sale.Office values('Of-04','Pazuntaung Branch','No-89', 'Pazuntaung Township','Yangon','01-4846278','littlebabybr4@gmail.com')
insert into sale.Office values('Of-05','Hlaing Branch','No-78(A)', 'Hlaing Township','Yangon','09-4406716','littlebabybr5@gmail.com')
insert into sale.Office values('Of-06','Sanchaung Branch','No-63(B)', 'Sanchaung Township','Yangon','09-6744046','littlebabybr6@gmail.com')
insert into sale.Office values('Of-07','Lathar Branch','No-55', 'Lathar Township','Yangon','01-7868918','littlebabybr7@gmail.com')
insert into sale.Office values('Of-08','Pyigyidagun Branch','No-567', 'Pyigyidagun Township','Mandalay','02-4691303','littlebabybr8@gmail.com')
insert into sale.Office values('Of-09','Aungmyetharzan Branch','No-432', 'Aungmyetharzan Township','Mandalay','02-4692637','littlebabybr9@gmail.com')
insert into sale.Office values('Of-10','Pyay Branch','No-32', 'Pyay','Pyay','05-3256406','littlebabybr1@gmail.com')


----------------------------------------------------------

create schema cus

create table cus.Customer
(
CustomerID char(5) not null
constraint pk_Customer_CustomerID
primary key(CustomerID)
constraint chk_Customer_CustomerID
check (CustomerID like 'S-[0-9][0-9][0-9]'),

CustomerName varchar(40) not null,

CustomerHouseNo varchar(10) not null,

CustomerTownship varchar(30) not null,

CustomerCity varchar (30) not null
constraint def_Customer_CustomerCity
default'Yangon',

CustomerPhone varchar(12) not null
constraint chk_Customer_CustomerPhone
check (CustomerPhone like '0[1-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),

CustomerEmail varchar(40)
constraint chk_Customer_CustomerEmail
check ( CustomerEmail like '%_@gmail.com'),

)
drop table cus.Customer

alter table cus.Customer
add constraint unq_Customer_CustomerPhone
unique(CustomerPhone)


insert into cus.Customer values ('S-001','Aye Aye Aung','No.168','Ahlon','Yangon','09-7842343','aaa3@gmail.com')
insert into cus.Customer values ('S-002','Si Thu','No.569','North Dagon','Yangon','09-4593545','stv@gmail.com')
insert into cus.Customer values ('S-003','Kyaw Myint','No.445','Patheingyi','Mandalay','09-4404678','kmm@gmail.com')
insert into cus.Customer values ('S-004','Kaung Kaung','No.450(B)','South Dagon','Yangon','09-7960034','kk2@gmail.com')
insert into cus.Customer values ('S-005','Aye Thiri','No.20(A)','Aung Chan Thar','Mandalay','09-5401244','ayethiri@gmail.com')
insert into cus.Customer values ('S-006','Nyein Su','No.24(C)','Pathein','Pathein','09-9674404','nysu@gmail.com')
insert into cus.Customer values ('S-007','Wei Wei','No.67','Ahlon','Yangon','09-7868470','wei2@gmail.com')
insert into cus.Customer values ('S-008','Chan Myae','No.345','Insein','Yangon','09-4324566','chanmy@gmail.com')
insert into cus.Customer values ('S-009','Su Myat','No.23','Mawlamyine','Mawlamyine','09-3423522','sumyat@gmail.com')
insert into cus.Customer values ('S-010','Htet Htet','No.885','Hlaing','Yangon','09-5843053','htht@gmail.com')
insert into cus.Customer values ('S-011','Ye Yint','No.45','Pyay','Pyay','09-7845294','yyv@gmail.com')
insert into cus.Customer values ('S-012','Mar Mar','No.35(B)','Pyay','Pyay','09-7954830','marmar@gmail.com')
insert into cus.Customer values ('S-013','Thidar','No.96(C)','Insein','Yangon','09-5694306','thidar@gmail.com')
insert into cus.Customer values ('S-014','Aung Khant','No.76','Hledan','Yangon','09-7843523','akk@gmail.com')
insert into cus.Customer values ('S-015','Soe Pyae','No.91(A)','Pyin Oo Lwin','Pyin Oo Lwin','09-5404356','soepyae@gmail.com')
insert into cus.Customer values ('S-016','Pyae Phyo','No.77','Insein','Yangon','09-9735245','pp2@gmail.com')
insert into cus.Customer values ('S-017','May Myat','No.173','Lathar','Yangon','09-7643459','pyae@gmail.com')
insert into cus.Customer values ('S-018','Moe Moe','No.75(A)','Pazundaung','Yangon','09-9543254','maymy@gmail.com')
insert into cus.Customer values ('S-019','Ei Sandar','No.203','Bago','Bago','09-6743439','eisan@gmail.com')
insert into cus.Customer values ('S-020','Kyal Sin','No.473','Pyigyidagun','Mandalay','09-4524546','kyalsin@gmail.com')





select * from orderSch.Orders
select * from orderSch.Orderdetail
select * from sale.Item
select * from sale.Office
select * from sale.Staff
select * from cus.Customer


----------------------6 select commands--------------------------------
--1--
select OrderDate as OrderingDate,
sum(TaxRate) as TotalTaxCharges,
sum(DeliveryCharges)as TotalDeliveryCharges,
sum(Total)as TotalFinalAmount
from orderSch.Orders
group by OrderDate

--2--
select cus.Customer.CustomerName, cus.Customer.CustomerPhone,cus.Customer.CustomerEmail, cus.Customer.CustomerTownship,
count(orderSch.Orders.CustomerID) as TotalOrderingTime, 
sum(Total) as TotalPaymentAmount
from cus.Customer
left outer join
orderSch.Orders
on cus.Customer.CustomerID=orderSch.Orders.CustomerID
where month(orderSch.Orders.OrderDate)=11 or month(orderSch.Orders.OrderDate)=12
group by CustomerName,CustomerPhone,CustomerEmail,CustomerTownship
order by count(orderSch.Orders.CustomerID) desc

--3--
select top(10) sale.Item.ItemCode,sale.Item.Description, sale.Item.UnitPrice,
sum(orderSch.Orderdetail.Qty) as TotalOrderingQuantity, 
sum(orderSch.Orderdetail.Amount) as TotalPayAmount
from sale.Item
left outer join
orderSch.Orderdetail
on sale.Item.ItemCode=orderSch.Orderdetail.ItemCode
group by sale.Item.ItemCode, Description,UnitPrice
order by sum(orderSch.Orderdetail.Amount) desc

--4--
select cus.Customer.CustomerTownship, 
sum(orderSch.Orderdetail.Qty) as NumOfQuantity, 
sum(orderSch.Orders.Total) as TotalOrderingAmount
from cus.Customer
left outer join
orderSch.Orders
on cus.Customer.CustomerID=orderSch.Orders.CustomerID
left outer join
orderSch.Orderdetail
on orderSch.Orders.OrderNo=orderSch.Orderdetail.OrderNo
group by CustomerTownship

--5--
select DATENAME(month, orderSch.Orders.OrderDate) as MonthName, cus.Customer.CustomerName,
count(orderSch.Orders.CustomerID) as TotalOrderingCount,
sum (orderSch.Orders.ToTal) as TotalPayAmount
from orderSch.Orders
left outer join
cus.Customer
on orderSch.Orders.CustomerID = cus.Customer.CustomerID
group by DATENAME(month, orderSch.Orders.OrderDate), cus.Customer.CustomerName
order by DATENAME(month, orderSch.Orders.OrderDate) desc


--6--
select sale.Staff.StaffName, sum(orderSch.Orderdetail.Qty) as TotalOrderingQuantity, sum(orderSch.Orders.Total) as TotalSaleAmount
from sale.Staff
left outer join
orderSch.Orders
on sale.Staff.StaffID = orderSch.Orders.StaffID
left outer join
orderSch.Orderdetail
on orderSch.Orders.OrderNo=orderSch.Orders.OrderNo
group by StaffName





