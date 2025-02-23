namespace Microsoft.PowerBIReports;

using Microsoft.Purchases.PowerBIReports;
using Microsoft.Sales.PowerBIReports;
using Microsoft.Finance.PowerBIReports;
using Microsoft.Manufacturing.PowerBIReports;
using Microsoft.Projects.PowerBIReports;
using Microsoft.Inventory.PowerBIReports;

permissionset 36951 "PowerBi Report Basic"
{
    Access = Internal;
    Caption = 'Power BI Core Basic', MaxLength = 30;
    Assignable = true;
    Permissions =
        tabledata "Dimension Set Entry" = R,
        tabledata "PowerBI Reports Setup" = R,
        tabledata "Working Day" = R,
        tabledata "Account Category" = R,
        table "Dimension Set Entry" = X,
        table "PowerBI Reports Setup" = X,
        table "Working Day" = X,
        table "Account Category" = X,
        codeunit "Finance Filter Helper" = X,
        codeunit Initialization = X,
        codeunit "Installation Handler" = X,
        codeunit "Manuf. Filter Helper" = X,
        codeunit "Project Filter Helper" = X,
        codeunit "Purchases Filter Helper" = X,
        codeunit "Sales Filter Helper" = X,
        codeunit "Update Dim. Set Entries" = X,
        codeunit "Finance Installation Handler" = X,
        page "PowerBI Assisted Setup" = X,
        page Customers = X,
        page "Date Setup" = X,
        page "General Ledger Setup - PBI API" = X,
        page Locations = X,
        page "Power BI Selection Lookup" = X,
#if not CLEAN25
#pragma warning disable AL0432
        page "Purchasing Scorecard" = X,
#pragma warning restore AL0432
#endif
        page "Salesperson/Purchasers" = X,
        page "PowerBI Reports Setup" = X,
        page "Vendors - PBI API" = X,
        page "Working Days" = X,
        page "Working Days Setup" = X,
        page "Working Days Subform" = X,
        page "Account Categories" = X,
        query "Assembly Headers - Order" = X,
        query "Assembly Lines - Item" = X,
        query Bins = X,
        query "Calendar Entries" = X,
        query "Capacity Ledger Entries" = X,
        query "Customer Ledger Entries" = X,
        query "PowerBI Dimension Set Entries" = X,
        query "PowerBI Dimension Sets" = X,
        query Dimensions = X,
        query "G/L Account Categories" = X,
        query "G/L Accounts" = X,
        query "G/L Budget Entries - PBI API" = X,
        query "G/L Budgets" = X,
        query "G/L Entries - Closing" = X,
        query "G/L Entries - Income Statement" = X,
        query "G\L Entries - Balance Sheet" = X,
        query "Item Budget Entries - Purch." = X,
        query "Item Budget Entries - Sales" = X,
        query "Item Budget Names" = X,
        query "Item Ledger Entries - PBI API" = X,
        query "Item Ledger Entries - Prod." = X,
        query "Items - PBI API" = X,
        query "Job Ledger Entries - PBI API" = X,
        query "Job Planning Lines" = X,
        query "Job Planning Lines - Item" = X,
        query "Job Tasks" = X,
        query Jobs = X,
        query "Machine Centers" = X,
        query "Planning Components" = X,
        query "Prod. Order Capacity Needs" = X,
        query "Prod. Order Comp. - Invt." = X,
        query "Prod. Order Comp. - Manuf." = X,
        query "Prod. Order Lines - Invt." = X,
        query "Prod. Order Lines - Manuf." = X,
        query "Prod. Order Routing Lines" = X,
        query "Purch. Lines - Item Received" = X,
        query "Purch. Lines - Job Outstanding" = X,
        query "Purch. Lines - Job Received" = X,
        query "Purch. Lines - Item Outstd." = X,
        query "Purchase Lines - Outstanding" = X,
        query "Requisition Lines" = X,
        query "Sales Line - Item Outstanding" = X,
        query "Sales Line - Item Shipped" = X,
        query "Sales Lines - Outstanding" = X,
        query "Service Lines - Order" = X,
        query "Transfer Lines" = X,
        query "Value Entries - Item" = X,
        query "Value Entries - Purch." = X,
        query "Value Entries - Sales" = X,
        query "Vendor Ledg. Entries - PBI API" = X,
        query "Warehouse Activity Lines" = X,
        query "Warehouse Entries" = X,
        query "Whse. Journal Lines - From Bin" = X,
        query "Whse. Journal Lines - To Bin" = X,
        query "Work Centers" = X,
        query Zones = X,
        query "Account Categories" = X;
}