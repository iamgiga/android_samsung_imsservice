.class public Lcom/sec/internal/google/ImsMmtelFeature;
.super Landroid/telephony/ims/compat/feature/MMTelFeature;
.source "ImsMmtelFeature.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsMmTelFeature"


# instance fields
.field mMainSvc:Lcom/sec/internal/google/GoogleImsService;

.field private final mPhoneId:I

.field private mServiceId:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/google/GoogleImsService;I)V
    .locals 1
    .param p1, "inMainSvc"    # Lcom/sec/internal/google/GoogleImsService;
    .param p2, "inPhoneId"    # I

    .line 35
    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;-><init>()V

    .line 36
    iput p2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mPhoneId:I

    .line 37
    invoke-virtual {p0, p2}, Lcom/sec/internal/google/ImsMmtelFeature;->setSlotId(I)V

    .line 38
    iput-object p1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    .line 40
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/ImsMmtelFeature;->setFeatureState(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 135
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/GoogleImsService;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "callSessionType"    # I
    .param p3, "callType"    # I

    .line 177
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    if-ne p1, v0, :cond_1

    .line 182
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/google/GoogleImsService;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 187
    .local v1, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsMmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 189
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided session ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match with the phone ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mPhoneId:I

    .line 179
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\'s session ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    .line 180
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;

    .line 206
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    if-ne p1, v0, :cond_1

    .line 211
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/google/GoogleImsService;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 216
    .local v1, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsMmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 218
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided session ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match with the phone ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mPhoneId:I

    .line 208
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\'s session ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    .line 209
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endSession(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 80
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    if-ne p1, v0, :cond_1

    .line 85
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/google/GoogleImsService;->close(I)V

    .line 87
    iput v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    .line 89
    :cond_0
    return-void

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided session ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match with the phone ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mPhoneId:I

    .line 82
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\'s session ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    .line 83
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->getEcbmInterface(I)Lcom/sec/internal/google/ImsEcbmImpl;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureState()I
    .locals 1

    .line 142
    invoke-super {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getFeatureState()I

    move-result v0

    return v0
.end method

.method public getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->getMultiEndpointInterface(I)Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    move-result-object v0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 8
    .param p1, "sessionId"    # I
    .param p2, "callId"    # Ljava/lang/String;

    .line 232
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    if-ne p1, v0, :cond_2

    .line 237
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/google/GoogleImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 242
    .local v1, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsMmTelFeature"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    .line 244
    .local v6, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-object v2

    .line 249
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_1
    return-object v2

    .line 233
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided session ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match with the phone ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mPhoneId:I

    .line 234
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\'s session ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    .line 235
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->getUtInterface(I)Landroid/telephony/ims/stub/ImsUtImplBase;

    move-result-object v0

    return-object v0
.end method

.method public isConnected(II)Z
    .locals 8
    .param p1, "callSessionType"    # I
    .param p2, "callType"    # I

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/internal/google/GoogleImsService;->isConnected(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 110
    .local v1, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsMmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v6, v1, v5

    .line 112
    .local v6, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return v4
.end method

.method public isOpened()Z
    .locals 2

    .line 124
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->isOpened(I)Z

    move-result v0

    return v0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onFeatureRemoved()V
    .locals 3

    .line 318
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v2, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/google/GoogleImsService;->close(I)V

    .line 320
    iput v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    .line 322
    :cond_0
    return-void
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 151
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/google/GoogleImsService;->removeRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 155
    :cond_0
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 7
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 294
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/internal/google/GoogleImsService;->setUiTTYMode(IILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 299
    .local v1, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsMmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 301
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_1
    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 7
    .param p1, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 60
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/sec/internal/google/GoogleImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 65
    .local v1, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsMmTelFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 67
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_1
    iget v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mServiceId:I

    return v0
.end method

.method public turnOffIms()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->turnOffIms(I)V

    .line 279
    return-void
.end method

.method public turnOnIms()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mMainSvc:Lcom/sec/internal/google/GoogleImsService;

    iget v1, p0, Lcom/sec/internal/google/ImsMmtelFeature;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->turnOnIms(I)V

    .line 272
    return-void
.end method
