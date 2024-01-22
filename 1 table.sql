use ImagePrintingDB
go

drop table if exists Canvas
GO

create table dbo.Canvas(
    CanvasId int identity primary key not null,
    FirstName varchar(30) not null constraint ck_Canvas_FirstName_cannot_be_blank check(FirstName <> ''),
    LastName varchar(30) not null constraint ck_Canvas_LastName_cannot_be_blank check(LastName <> ''),
    CanvasSize varchar(6) not null constraint ck_Canvas_CanvasSize_must_be_small_medium_large_or_jumbo check(CanvasSize in ('small', 'medium', 'large', 'jumbo')),
    WantsDelivery bit not null constraint df_Canvas_WantsDelivery default 0,
    AddressNumber int not null constraint df_Canvas_AddressNumber default 0,
    StreetAndState varchar(100) not null constraint df_Canvas_StreetAndState default '',
    DeliveryFee as AddressNumber * 0.05,
    ProductPrice as case
        when CanvasSize = 'small' then 50
        when CanvasSize = 'medium' then 75
        when CanvasSize = 'large' then 100
        when CanvasSize = 'jumbo' then 150 
        end,
    --AF I can't have a computed column reference other computed columns, that's why I have to do it in this wordy way (there are more complicated ways to do this but they are not covered in the course now)
    TotalPrice as AddressNumber * 0.05 + (case
        when CanvasSize = 'small' then 50
        when CanvasSize = 'medium' then 75
        when CanvasSize = 'large' then 100
        when CanvasSize = 'jumbo' then 150 
        end),
    DateOrdered date not null constraint ck_Canvas_DateOrdered_valid_date check(year(DateOrdered) > 2000 and DateOrdered <= getdate()),
    DateFulfilled date not null constraint ck_Canvas_DateFulfilled_cannot_be_future_date check(DateFulfilled <= getdate()),
    constraint ck_Canvas_DateFulfilled_greater_than_DateOrdered check(DateFulfilled > DateOrdered),
    constraint ck_Canvas_WantsDeliver_true_than_Address_must_be_valid check(WantsDelivery = 0 or (WantsDelivery = 1 and AddressNumber > 0 and StreetAndState <> ''))
)