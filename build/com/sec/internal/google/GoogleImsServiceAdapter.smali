.class public Lcom/sec/internal/google/GoogleImsServiceAdapter;
.super Landroid/telephony/ims/compat/ImsService;
.source "GoogleImsServiceAdapter.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mFeatureList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsMmtelFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/telephony/ims/compat/ImsService;-><init>()V

    .line 14
    const-string v0, "GoogleImsServiceAdapter"

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsServiceAdapter;->LOG_TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsServiceAdapter;->mFeatureList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 18
    const-string v0, "GoogleImsServiceAdapter"

    const-string v1, "onBind:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-super {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 2
    .param p1, "slotId"    # I

    .line 44
    invoke-static {}, Lcom/sec/internal/google/GoogleImsService;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsServiceAdapter;->mFeatureList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsServiceAdapter;->mFeatureList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/compat/feature/MMTelFeature;

    return-object v0

    .line 47
    :cond_0
    const-string v0, "GoogleImsServiceAdapter"

    const-string v1, "Service not available yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 3
    .param p1, "slotId"    # I

    .line 28
    invoke-static {}, Lcom/sec/internal/google/GoogleImsService;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsServiceAdapter;->mFeatureList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsServiceAdapter;->mFeatureList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/compat/feature/MMTelFeature;

    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcom/sec/internal/google/ImsMmtelFeature;

    invoke-static {}, Lcom/sec/internal/google/GoogleImsService;->getInstanceIfReady()Lcom/sec/internal/google/GoogleImsService;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/google/ImsMmtelFeature;-><init>(Lcom/sec/internal/google/GoogleImsService;I)V

    .line 33
    .local v0, "m":Lcom/sec/internal/google/ImsMmtelFeature;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsServiceAdapter;->mFeatureList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-object v0

    .line 37
    .end local v0    # "m":Lcom/sec/internal/google/ImsMmtelFeature;
    :cond_1
    const-string v0, "GoogleImsServiceAdapter"

    const-string v1, "Service not available yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
