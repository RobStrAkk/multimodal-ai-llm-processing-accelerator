using 'main.bicep'

// Function & web apps
param appendUniqueUrlSuffix = true

param functionAppName = 'ai-llm-processing-func'
param functionAppUsePremiumSku = true

param webAppName = 'ai-llm-processing-demo'
param webAppUsePasswordAuth = true
param webAppUsername = 'admin'
param webAppPassword = 'password'

// Other resources
param resourcePrefix = 'llm-proc'

// Optionally give access to additional identities. This allows you to 
// run the application locally while connecting to cloud services using 
// identity-based authentication.
// To get your identity ID, run the following command in the Azure CLI:
// > az ad signed-in-user show --query id -o tsv
param additionalRoleAssignmentIdentityIds = []

// Storage
param storageAccountName = 'llmprocstorage'

// Cognitive services
// Ensure your speech service location has model availability for the methods you need - see:
// 1. https://learn.microsoft.com/en-us/azure/ai-services/speech-service/regions
// 2. https://learn.microsoft.com/en-us/azure/ai-services/speech-service/fast-transcription-create#prerequisites
param speechLocation = 'germanywestcentral'

// Doc Intelligence API v4.0 is only supported in some regions. To make use of the custom
// DocumentIntelligenceProcessor, make sure to select a region where v4.0 is supported. See:
// 1. https://learn.microsoft.com/en-us/azure/ai-services/document-intelligence/versioning/changelog-release-history
param docIntelLocation = 'germanywestcentral'

// Ensure your Content Understanding resource is deployed to a supported location - see:
// 1. https://learn.microsoft.com/en-us/azure/ai-services/content-understanding/language-region-support?tabs=document#region-support
param contentUnderstandingLocation = 'germanywestcentral'

// Azure OpenAI
// Ensure your OpenAI service locations have model availability - see:
// 1. https://learn.microsoft.com/en-us/azure/ai-services/openai/quotas-limits#regional-quota-limits
param openAILocation = 'germanywestcentral'
param openAILLMDeploymentCapacity = 30
param openAILLMModel = 'gpt-4o-mini'
param openAILLMModelVersion = '2024-07-18'
param openAILLMDeploymentSku = 'GlobalStandard'

/*
param openAIWhisperDeploymentCapacity = 1
param openAIWhisperModel = 'whisper'
param openAIWhisperModelVersion = '001'
param openAIWhisperDeploymentSku = 'Standard'
*/
