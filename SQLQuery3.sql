CREATE EXTERNAL DATA SOURCE sales_blob 
WITH (
  TYPE = BLOB_STORAGE ,
  LOCATION= 'https://portal.azure.com/#view/Microsoft_Azure_Storage/ContainerMenuBlade/~/overview/storageAccountId/%2Fsubscriptions%2Fcb22247e-d670-43d7-b416-f06fb8aa381b%2FresourceGroups%2Fsales-project-rg%2Fproviders%2FMicrosoft.Storage%2FstorageAccounts%2Fsalesdatarajesh2026/path/sales-data/etag/%220x8DEA2EB6766D3D9%22/defaultId//publicAccessVal/None',
  CREDENTIAL =azure_cred);