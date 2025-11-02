codeunit 50000 "File Upload"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Document Attachment Mgmt", OnAfterGetRefTable, '', false, false)]
    local procedure OnAfterGetRefTable(var RecRef: RecordRef; DocumentAttachment: Record "Document Attachment")

    var
        VoucherRecord: Record "Voucher Header";
    begin
        case DocumentAttachment."Table ID" of

            Database::"Voucher Header":
                begin
                    RecRef.Open(Database::"Voucher Header");
                    if VoucherRecord.Get(DocumentAttachment."No.") then
                        RecRef.GetTable(VoucherRecord);
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Document Attachment Mgmt", OnAfterTableHasNumberFieldPrimaryKey, '', false, false)]
    local procedure OnAfterTableHasNumberFieldPrimaryKey(TableNo: Integer; var FieldNo: Integer; var Result: Boolean)
    var
        VoucherRecord: Record "Voucher Header";
    begin
        begin
            case TableNo of
                Database::"Voucher Header":
                    begin
                        Result := true;
                        FieldNo := VoucherRecord.FieldNo("Document No.");
                    end
            end;
        end;
    end;

}