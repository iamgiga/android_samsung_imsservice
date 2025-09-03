.class Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;
.super Landroid/telephony/ims/aidl/IImsRegistration$Stub;
.source "GoogleImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/google/GoogleImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationImpl"
.end annotation


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/sec/internal/google/GoogleImsService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/google/GoogleImsService;I)V
    .locals 0
    .param p2, "phoneId"    # I

    .line 1036
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;-><init>()V

    .line 1037
    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    .line 1038
    iput p2, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    .line 1039
    return-void
.end method


# virtual methods
.method public addRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 1062
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {v0}, Lcom/sec/internal/google/GoogleImsService;->access$000(Lcom/sec/internal/google/GoogleImsService;)Lcom/sec/internal/google/ImsNotifier;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/ImsNotifier;->addCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 1063
    return-void
.end method

.method public getRegistrationTechnology()I
    .locals 8

    .line 1042
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1043
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    const/4 v1, -0x1

    .line 1044
    .local v1, "regiTech":I
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1045
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1046
    .local v4, "regi":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    iget v6, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1047
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 1048
    .local v5, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1049
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v6

    const/16 v7, 0x12

    if-eq v6, v7, :cond_0

    .line 1050
    const/4 v1, 0x0

    goto :goto_1

    .line 1052
    :cond_0
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(I)I

    move-result v1

    .line 1045
    .end local v4    # "regi":Lcom/sec/ims/ImsRegistration;
    .end local v5    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1058
    :cond_2
    return v1
.end method

.method public removeRegistrationCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 1066
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->this$0:Lcom/sec/internal/google/GoogleImsService;

    invoke-static {v0}, Lcom/sec/internal/google/GoogleImsService;->access$000(Lcom/sec/internal/google/GoogleImsService;)Lcom/sec/internal/google/ImsNotifier;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/google/GoogleImsService$ImsRegistrationImpl;->mPhoneId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/ImsNotifier;->removeCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 1067
    return-void
.end method
