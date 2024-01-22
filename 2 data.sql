use ImagePrintingDB
go

delete Canvas
go 

insert Canvas(FirstName, LastName, CanvasSize, WantsDelivery, AddressNumber, StreetAndState, DateOrdered, DateFulfilled)
select 'Henry', 'ford', 'medium', 1, 748, 'Miles Street Holyoke, MA', '02/09/2021', '02/19/2021'
union select 'Lucy', 'Dennis', 'small', 1, 9345, 'East Road Mechanicsville, VA', '07/30/2023', '08/3/2023'
union select 'Lola', 'Klein', 'small', 1, 2, 'Pheasant Street Westerville, OH', '05/25/2018', '05/29/2018'
union select 'Erika', 'Wilkins', 'jumbo', 0, 0, '', '05/20/2005', '06/08/2005'
union select 'Cathy', 'Montgomery', 'small', 1, 7673, 'James St. Chesterton, IN', '08/21/2013', '08/28/2013'
union select 'Travis', 'Austin', 'medium', 0, 0, '', '09/09/2023', '09/22/2023'
union select 'Kerry', 'Graves', 'large', 0, 0, '', '10/23/2023', '10/28/2023'
union select 'Pat', 'Rivera', 'large', 1, 8642, 'Yule Street, Arvada CO', '12/06/2010', '12/10/2010'
union select 'Alexandra', 'Estrada', 'small', 0, 0, '', '02/21/2006', '02/22/2006'
union select 'Derek', 'Jones', 'jumbo', 1, 5331, 'Rexford Court, Montgomery AL', '04/18/2006', '04/21/2006'
union select 'Alexandra', 'Estrada', 'small', 0, 0, '', '04/11/2008', '04/15/2008'
union select 'Lola', 'Klein', 'small', 1, 2, 'Pheasant Street Westerville, OH', '06/03/2018', '06/07/2018'
union select 'Erika', 'Wilkins', 'jumbo', 0, 0, '', '11/12/2020', '11/20/2023'
union select 'Kerry', 'Graves', 'large', 0, 0, '', '03/03/2018', '03/09/2018'
union select 'Pat', 'Rivera', 'large', 1, 8642, 'Yule Street, Arvada CO', '07/07/2016', '07/12/2016'
union select 'Alexandra', 'Estrada', 'small', 0, 0, '', '02/04/2010', '02/15/2010'
