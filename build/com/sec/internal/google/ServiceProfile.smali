.class public Lcom/sec/internal/google/ServiceProfile;
.super Ljava/lang/Object;
.source "ServiceProfile.java"


# instance fields
.field private final mIncomingCallIntent:Landroid/app/PendingIntent;

.field private final mPhoneId:I

.field private final mRegistrationListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/ims/internal/IImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceClass:I


# direct methods
.method public constructor <init>(IILcom/android/ims/internal/IImsRegistrationListener;Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .param p4, "incomingCallIntent"    # Landroid/app/PendingIntent;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    .line 20
    iput-object p4, p0, Lcom/sec/internal/google/ServiceProfile;->mIncomingCallIntent:Landroid/app/PendingIntent;

    .line 21
    iput p1, p0, Lcom/sec/internal/google/ServiceProfile;->mPhoneId:I

    .line 22
    iput p2, p0, Lcom/sec/internal/google/ServiceProfile;->mServiceClass:I

    .line 23
    iget-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 24
    return-void
.end method


# virtual methods
.method public getIncomingCallIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mIncomingCallIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/sec/internal/google/ServiceProfile;->mPhoneId:I

    return v0
.end method

.method public getServiceClass()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/sec/internal/google/ServiceProfile;->mServiceClass:I

    return v0
.end method

.method public notifyRegistrationFeatureCapabilityChanged(I[I[I)V
    .locals 8
    .param p1, "svcClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .line 47
    iget-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 48
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 54
    .local v2, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceProfile"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 56
    .local v6, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 58
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_2
    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 61
    return-void
.end method

.method public notifyRegistrationListenerDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 8
    .param p1, "ri"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 99
    iget-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 100
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 101
    add-int/lit8 v0, v0, -0x1

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 104
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 107
    .local v2, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceProfile"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 109
    .local v6, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 111
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_2
    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 114
    return-void
.end method

.method public notifyRegistrationListenerRegistered(I)V
    .locals 8
    .param p1, "tech"    # I

    .line 64
    iget-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 65
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 66
    add-int/lit8 v0, v0, -0x1

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 71
    .local v2, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceProfile"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 73
    .local v6, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 75
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_2
    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 78
    return-void
.end method

.method public notifyRegistrationListenerRegisteredUriChanged(I[Landroid/net/Uri;)V
    .locals 8
    .param p1, "tech"    # I
    .param p2, "inUri"    # [Landroid/net/Uri;

    .line 81
    iget-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 82
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 83
    add-int/lit8 v0, v0, -0x1

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V

    .line 86
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/IImsRegistrationListener;

    invoke-interface {v1, p2}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 89
    .local v2, "exMsg":[Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ServiceProfile"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    array-length v3, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 91
    .local v6, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v6    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "exMsg":[Ljava/lang/StackTraceElement;
    :cond_0
    :goto_2
    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 96
    return-void
.end method

.method public removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 43
    iget-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 44
    return-void
.end method

.method public setRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 39
    iget-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 40
    return-void
.end method
