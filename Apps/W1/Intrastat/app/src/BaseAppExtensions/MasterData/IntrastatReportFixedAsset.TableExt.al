// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
namespace Microsoft.Inventory.Intrastat;

using Microsoft.FixedAssets.FixedAsset;
using Microsoft.Foundation.Address;
using Microsoft.Foundation.UOM;

tableextension 4810 "Intrastat Report Fixed Asset" extends "Fixed Asset"
{
    fields
    {
        field(4810; "Exclude from Intrastat Report"; Boolean)
        {
            Caption = 'Exclude from Intrastat Report';
            DataClassification = CustomerContent;
            ToolTip = 'Specifies if the asset shall be excluded from Intrastat report.';
        }
        field(4811; "Tariff No."; Code[20])
        {
            Caption = 'Tariff No.';
            DataClassification = CustomerContent;
            TableRelation = "Tariff Number";
            ToolTip = 'Specifies a code for the asset''s tariff number.';
            ValidateTableRelation = false;
            trigger OnValidate()
            var
                TariffNumber: Record "Tariff Number";
            begin
                if "Tariff No." = '' then
                    exit;

                if (not TariffNumber.WritePermission) or
                   (not TariffNumber.ReadPermission)
                then
                    exit;

                if TariffNumber.Get("Tariff No.") then
                    exit;

                TariffNumber.Init();
                TariffNumber."No." := "Tariff No.";
                TariffNumber.Insert();
            end;
        }
        field(4812; "Country/Region of Origin Code"; Code[10])
        {
            Caption = 'Country/Region of Origin Code';
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
            ToolTip = 'Specifies a code for the country/region where the asset was produced or processed.';
        }
        field(4813; "Gross Weight"; Decimal)
        {
            Caption = 'Gross Weight';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 5;
            MinValue = 0;
            ToolTip = 'Specifies the gross weight of the asset.';
        }
        field(4814; "Net Weight"; Decimal)
        {
            Caption = 'Net Weight';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 5;
            MinValue = 0;
            ToolTip = 'Specifies the net weight of the asset.';
        }
        field(4815; "Supplementary Unit of Measure"; Code[10])
        {
            Caption = 'Supplementary Unit of Measure';
            DataClassification = CustomerContent;
            TableRelation = "Unit of Measure";
            ToolTip = 'Specifies the unit of measure that is used as the supplementary unit in the Intrastat report.';
        }
    }
}