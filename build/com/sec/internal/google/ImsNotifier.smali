.class public Lcom/sec/internal/google/ImsNotifier;
.super Ljava/lang/Object;
.source "ImsNotifier.java"

# interfaces
.implements Lcom/sec/internal/interfaces/google/IImsNotifier;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsNotifier"


# instance fields
.field private mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/google/GoogleImsService;)V
    .locals 0
    .param p1, "googleImsService"    # Lcom/sec/internal/google/GoogleImsService;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/google/ImsNotifier;)Lcom/sec/internal/google/GoogleImsService;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsNotifier;

    .line 26
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    return-object v0
.end method

.method private notifyRegistrationListener(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;Z)V
    .locals 7
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registered"    # Z
    .param p3, "error"    # Lcom/sec/ims/ImsRegistrationError;
    .param p4, "uriChanged"    # Z

    .line 42
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 43
    .local v0, "phoneId":I
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 44
    .local v2, "key":Ljava/lang/Integer;
    sget-object v3, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/google/ServiceProfile;

    .line 45
    .local v3, "service":Lcom/sec/internal/google/ServiceProfile;
    invoke-virtual {v3}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying Listener with status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsNotifier"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    if-eqz p2, :cond_1

    .line 48
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(I)I

    move-result v4

    .line 49
    .local v4, "registrationTech":I
    if-nez p4, :cond_0

    .line 50
    invoke-virtual {v3, v4}, Lcom/sec/internal/google/ServiceProfile;->notifyRegistrationListenerRegistered(I)V

    goto :goto_1

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v5, v5, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/google/ServiceProfile;->notifyRegistrationListenerRegisteredUriChanged(I[Landroid/net/Uri;)V

    .line 54
    .end local v4    # "registrationTech":I
    :goto_1
    goto :goto_2

    .line 55
    :cond_1
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v4

    .line 56
    .local v4, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    invoke-virtual {v3, v4}, Lcom/sec/internal/google/ServiceProfile;->notifyRegistrationListenerDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 59
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v4    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_2
    :goto_2
    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method


# virtual methods
.method public notifyFeatureCapableChanged(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFeatureCapableChanged, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsNotifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 139
    .local v1, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ServiceProfile;

    .line 140
    .local v2, "service":Lcom/sec/internal/google/ServiceProfile;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 141
    invoke-virtual {v2}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v5, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v5, v5, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/sec/internal/google/GoogleImsService;->convertCapaToFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/google/ServiceProfile;->notifyRegistrationFeatureCapabilityChanged(I[I[I)V

    .line 143
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "service":Lcom/sec/internal/google/ServiceProfile;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method public notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registered"    # Z
    .param p3, "error"    # Lcom/sec/ims/ImsRegistrationError;

    .line 36
    const-string v0, "ImsNotifier"

    const-string v1, "notifyImsRegistration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/GoogleImsService;->isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z

    move-result v0

    .line 38
    .local v0, "isUriChanged":Z
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/google/ImsNotifier;->notifyRegistrationListener(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;Z)V

    .line 39
    return-void
.end method

.method public onCdpnInfo(ILjava/lang/String;I)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "calledPartyNumber"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .line 124
    return-void
.end method

.method public onDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 3
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;

    .line 128
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    .line 129
    .local v0, "currMultEndpt":Lcom/sec/internal/google/ImsMultiEndPointImpl;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/GoogleImsService;->getCmcTypeFromRegHandle(I)I

    move-result v1

    .line 131
    .local v1, "deCmcType":I
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->setDialogInfo(Lcom/sec/ims/DialogEvent;I)V

    .line 132
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->requestImsExternalCallStateInfo()V

    .line 134
    .end local v1    # "deCmcType":I
    :cond_0
    return-void
.end method

.method public onIncomingCall(II)V
    .locals 12
    .param p1, "phoneId"    # I
    .param p2, "callId"    # I

    .line 64
    const-string v0, "ImsNotifier"

    const-string v1, "net.sip.vzthirdpartyapi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 68
    .local v3, "key":Ljava/lang/Integer;
    sget-object v4, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/google/ServiceProfile;

    .line 69
    .local v4, "service":Lcom/sec/internal/google/ServiceProfile;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v5

    if-ne v5, p1, :cond_5

    .line 70
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 71
    .local v5, "fillIn":Landroid/content/Intent;
    const-string v6, "android:imsCallID"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v6, "android:imsServiceId"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 74
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v6, v6, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v6, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v6

    .line 75
    .local v6, "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    if-eqz v6, :cond_3

    .line 76
    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    .line 77
    .local v7, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 78
    const-string v8, "com.samsung.telephony.extra.SEM_EXTRA_FORWARDED_CALL"

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_1
    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_2

    .line 81
    const-string v8, "android:ussd"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    :cond_2
    iget-object v8, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v8}, Lcom/sec/internal/google/GoogleImsService;->getCmcImsServiceUtil()Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v4, v6}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->onIncomingCall(ILandroid/content/Intent;Lcom/sec/internal/google/ServiceProfile;Lcom/sec/ims/volte2/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v6    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    .end local v7    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_3
    goto :goto_2

    .line 85
    :catch_0
    move-exception v6

    .line 86
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 87
    .local v7, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    array-length v8, v7

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 89
    .local v10, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v10    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 93
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v4}, Lcom/sec/internal/google/ServiceProfile;->getIncomingCallIntent()Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v7, v7, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const/16 v8, 0x65

    invoke-virtual {v6, v7, v8, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    goto :goto_4

    .line 94
    :catch_1
    move-exception v6

    .line 95
    .local v6, "ce":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v6}, Landroid/app/PendingIntent$CanceledException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 96
    .restart local v7    # "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    array-length v8, v7

    move v9, v2

    :goto_3
    if-ge v9, v8, :cond_5

    aget-object v10, v7, v9

    .line 98
    .restart local v10    # "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v10    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 102
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v4    # "service":Lcom/sec/internal/google/ServiceProfile;
    .end local v5    # "fillIn":Landroid/content/Intent;
    .end local v6    # "ce":Landroid/app/PendingIntent$CanceledException;
    .end local v7    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_5
    :goto_4
    goto/16 :goto_0

    .line 103
    :cond_6
    return-void
.end method

.method public onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .locals 9
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "remoteUri"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getCallId()I

    move-result v0

    .line 108
    .local v0, "callId":I
    iget-object v1, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    iget-object v1, v1, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    .line 109
    .local v1, "secPendingSession":Lcom/sec/ims/volte2/IImsCallSession;
    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/google/ImsNotifier;->onIncomingCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_1

    .line 112
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 114
    .local v3, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsNotifier"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 116
    .local v7, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v7    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_1
    return-void
.end method

.method public onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V
    .locals 2
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;

    .line 164
    const-string v0, "ImsNotifier"

    const-string v1, "onP2pPushCallEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/google/ImsNotifier$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/google/ImsNotifier$2;-><init>(Lcom/sec/internal/google/ImsNotifier;Lcom/sec/ims/DialogEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method public onP2pRegCompleteEvent()V
    .locals 2

    .line 148
    const-string v0, "ImsNotifier"

    const-string v1, "onP2pRegCompleteEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier;->mGoogleImsService:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0}, Lcom/sec/internal/google/GoogleImsService;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/internal/google/ImsNotifier$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/google/ImsNotifier$1;-><init>(Lcom/sec/internal/google/ImsNotifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    :cond_0
    return-void
.end method
