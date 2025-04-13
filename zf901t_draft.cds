@EndUserText.label: 'Draft Table for ZF901T'
@AccessControl.authorizationCheck: #CHECK
@ObjectModel.semanticKey: ['CompanyCode', 'FiscalYearBase', 'AccountingDocumentBase', 'AllocatedLineItem']
@ObjectModel.writeActivePersistence: 'ZF901T'
define draft table ZF901T_Draft {
    key DraftUUID : abap_sysuuid_x;
    key IsActiveEntity : abap_boolean;
    
    // Key fields
    Client : abap.clnt;
    CompanyCode : bukrs;
    FiscalYearBase : gjahr;
    AccountingDocumentBase : belnr_d;
    AllocatedLineItem : abap.numc(5);
    
    // Data fields
    FiscalYear : gjahr;
    AccountingDocument : belnr_d;
    SourceLedger : fins_ledger;
    PostingDate : budat;
    GlaccountS : hkont;
    GlaccountNameS : abap.char(20);
    GlaccountH : hkont;
    GlaccountNameH : abap.char(20);
    AmountingTransactionCurrency : dmbtr;
    CompanyCodeCurrency : waers;
    HeaderText : bktxt;
    AllocateMonths : abap.numc(3);
    LogStatus : abap.char(1);
    LogMessage : abap.char(100);
    
    // Administrative fields
    LocalCreatedBy : abp_creation_user;
    LocalCreatedAt : abp_creation_tstmpl;
    LocalLastChangedBy : abp_locinst_lastchange_user;
    LocalLastChangedAt : abp_locinst_lastchange_tstmpl;
    LastChangedAt : abp_lastchange_tstmpl;
    
    // Draft specific fields
    DraftEntityCreationDateTime : abp_creation_tstmpl;
    DraftEntityLastChangeDateTime : abp_lastchange_tstmpl;
    DraftAdministrativeData : DraftAdministrativeData;
} 