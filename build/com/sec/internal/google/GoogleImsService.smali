.class public Lcom/sec/internal/google/GoogleImsService;
.super Ljava/lang/Object;
.source "GoogleImsService.java"

# interfaces
.implements Lcom/sec/internal/interfaces/google/IGoogleImsService;


# static fields
.field private static final IMS_CALL_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_IMS_CALL_SERVICE"

.field private static final LOG_TAG:Ljava/lang/String; = "GoogleImsService"

.field static mInstance:Lcom/sec/internal/google/GoogleImsService;

.field static mMultEndPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsMultiEndPointImpl;",
            ">;"
        }
    .end annotation
.end field

.field static mServiceIdRef:I

.field static mServiceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ServiceProfile;",
            ">;"
        }
    .end annotation
.end field

.field static mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

.field static mSmsListenerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/aidl/IImsSmsListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mCallSessionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

.field private mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

.field private mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

.field mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/internal/IImsConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

.field mContext:Landroid/content/Context;

.field private mImsConferenceState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mImsEcbmList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/google/ImsEcbmImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

.field private mIsInitialMerge:Z

.field mOwnUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneCount:I

.field mServiceModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

.field mServiceUrn:Ljava/lang/String;

.field mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

.field mUtList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ims/stub/ImsUtImplBase;",
            ">;"
        }
    .end annotation
.end field

.field mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    .line 72
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    .line 73
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    .line 74
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    .line 75
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    .line 76
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/sec/internal/google/ImsSmsImpl;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "smm"    # Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 84
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/google/GoogleImsService;->mIsInitialMerge:Z

    .line 86
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    .line 87
    new-instance v2, Lcom/sec/internal/google/ImsNotifier;

    invoke-direct {v2, p0}, Lcom/sec/internal/google/ImsNotifier;-><init>(Lcom/sec/internal/google/GoogleImsService;)V

    iput-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    .line 88
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    .line 89
    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 147
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    .line 149
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 150
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    .line 151
    .local v0, "phoneCount":I
    iput v0, p0, Lcom/sec/internal/google/GoogleImsService;->mPhoneCount:I

    .line 152
    new-array v2, v0, [Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    iput-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 153
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/sec/internal/google/GoogleImsService;->mPhoneCount:I

    if-ge v2, v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    new-instance v4, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v4}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    aput-object v4, v3, v2

    .line 155
    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v1, [Landroid/net/Uri;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private extractOwnUrisFromReg(Lcom/sec/ims/ImsRegistration;)[Landroid/net/Uri;
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 973
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda2;-><init>()V

    .line 977
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda3;-><init>()V

    .line 978
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda4;-><init>()V

    .line 979
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    .line 976
    return-object v0

    .line 974
    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Uri;

    return-object v0
.end method

.method private getEcbmInterfaceForPhoneId(I)Lcom/sec/internal/google/ImsEcbmImpl;
    .locals 3
    .param p1, "phoneId"    # I

    .line 494
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getEcbmInterfaceForPhoneId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ImsEcbmImpl;

    return-object v0

    .line 498
    :cond_0
    new-instance v0, Lcom/sec/internal/google/ImsEcbmImpl;

    invoke-direct {v0}, Lcom/sec/internal/google/ImsEcbmImpl;-><init>()V

    .line 499
    .local v0, "ecbm":Lcom/sec/internal/google/ImsEcbmImpl;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsEcbmList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    return-object v0
.end method

.method private getIncreasedServiceId()I
    .locals 2

    .line 178
    sget v0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    add-int/lit8 v0, v0, 0x1

    .line 179
    .local v0, "i":I
    sput v0, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    .line 180
    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    .line 181
    const/4 v1, 0x0

    sput v1, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    .line 183
    :cond_0
    sget v1, Lcom/sec/internal/google/GoogleImsService;->mServiceIdRef:I

    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;)Lcom/sec/internal/google/GoogleImsService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smm"    # Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    const-class v0, Lcom/sec/internal/google/GoogleImsService;

    monitor-enter v0

    .line 161
    :try_start_0
    const-class v1, Lcom/sec/internal/google/GoogleImsService;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    if-nez v2, :cond_0

    .line 163
    new-instance v2, Lcom/sec/internal/google/GoogleImsService;

    invoke-direct {v2, p0, p1}, Lcom/sec/internal/google/GoogleImsService;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;)V

    sput-object v2, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    .line 165
    :cond_0
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    .line 166
    .local v2, "googleImsService":Lcom/sec/internal/google/GoogleImsService;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    monitor-exit v0

    return-object v2

    .line 166
    .end local v2    # "googleImsService":Lcom/sec/internal/google/GoogleImsService;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "smm":Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstanceIfReady()Lcom/sec/internal/google/GoogleImsService;
    .locals 1

    .line 92
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRegistrationTech(I)I
    .locals 1
    .param p0, "networkType"    # I

    .line 171
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    .line 172
    const/16 v0, 0xe

    return v0

    .line 174
    :cond_0
    return p0
.end method

.method public static isReady()Z
    .locals 1

    .line 99
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mInstance:Lcom/sec/internal/google/GoogleImsService;

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$extractOwnUrisFromReg$2(Lcom/sec/ims/util/NameAddr;)Z
    .locals 1
    .param p0, "o"    # Lcom/sec/ims/util/NameAddr;

    .line 977
    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->hasMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$extractOwnUrisFromReg$3(Lcom/sec/ims/util/NameAddr;)Landroid/net/Uri;
    .locals 2
    .param p0, "o"    # Lcom/sec/ims/util/NameAddr;

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$extractOwnUrisFromReg$4(I)[Landroid/net/Uri;
    .locals 1
    .param p0, "i"    # I

    .line 979
    new-array v0, p0, [Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic lambda$open$0(IILjava/util/Map$Entry;)Z
    .locals 2
    .param p0, "serviceClass"    # I
    .param p1, "phoneId"    # I
    .param p2, "o"    # Ljava/util/Map$Entry;

    .line 200
    move-object v0, p2

    .line 201
    .local v0, "value_o":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ServiceProfile;

    invoke-virtual {v1}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ServiceProfile;

    invoke-virtual {v1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 201
    :goto_0
    return v1
.end method

.method static synthetic lambda$open$1(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 1
    .param p0, "o"    # Ljava/util/Map$Entry;

    .line 204
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public acknowledgeSms(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    .line 619
    .local v0, "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 622
    aget-object v1, v0, p1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSms(IIII)V

    .line 623
    return-void

    .line 620
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public acknowledgeSmsReport(IIII)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSmsReport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    .line 628
    .local v0, "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 631
    aget-object v1, v0, p1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSmsReport(IIII)V

    .line 632
    return-void

    .line 629
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public acknowledgeSmsWithPdu(III[B)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "msgRef"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "acknowledgeSmsWithPdu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    .line 637
    .local v0, "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 640
    aget-object v1, v0, p1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/internal/google/ImsSmsImpl;->acknowledgeSmsWithPdu(III[B)V

    .line 641
    return-void

    .line 638
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 264
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "addRegistrationListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public changeAudioPath(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "changeAudioPath"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 544
    .local v0, "iVolteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateAudioInterface(II)V

    .line 548
    return-void

    .line 545
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public close(I)V
    .locals 3
    .param p1, "serviceId"    # I

    .line 228
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method convertCapaToFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I
    .locals 4
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 929
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 930
    .local v0, "features":[I
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 931
    const/4 v2, 0x0

    aput v2, v0, v2

    .line 932
    aput v3, v0, v3

    .line 934
    :cond_0
    invoke-virtual {p1, v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    aput v1, v0, v1

    .line 936
    const/4 v1, 0x3

    aput v1, v0, v1

    .line 938
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 939
    aput v1, v0, v1

    .line 940
    const/4 v1, 0x5

    aput v1, v0, v1

    .line 942
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 943
    const/4 v1, 0x6

    aput v1, v0, v1

    .line 944
    const/4 v1, 0x7

    aput v1, v0, v1

    .line 946
    :cond_3
    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 10
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "createCallProfile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 270
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/google/GoogleImsService;->isConnected(III)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 271
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v1, p2, p3}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 272
    .local v1, "profile":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 273
    .local v2, "registrations":[Lcom/sec/ims/ImsRegistration;
    if-eqz v2, :cond_5

    .line 274
    array-length v3, v2

    .line 275
    .local v3, "length":I
    const/4 v4, 0x0

    .line 277
    .local v4, "i":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 278
    goto :goto_3

    .line 280
    :cond_0
    aget-object v5, v2, v4

    .line 281
    .local v5, "regi":Lcom/sec/ims/ImsRegistration;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-eq p2, v6, :cond_1

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v7

    if-nez v7, :cond_4

    .line 282
    :cond_1
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v7

    .line 283
    .local v7, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v8, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v7, v8, :cond_3

    sget-object v8, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v8, 0x1

    .line 284
    .local v8, "supportHeldHostMerge":Z
    :goto_2
    const-string v9, "SupportHeldHostMerge"

    invoke-virtual {v1, v9, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 285
    if-eq p2, v6, :cond_4

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-nez v6, :cond_4

    .line 286
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "CallRadioTech"

    invoke-virtual {v1, v9, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    goto :goto_3

    .line 290
    .end local v7    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v8    # "supportHeldHostMerge":Z
    :cond_4
    nop

    .end local v5    # "regi":Lcom/sec/ims/ImsRegistration;
    add-int/lit8 v4, v4, 0x1

    .line 291
    goto :goto_0

    .line 293
    .end local v3    # "length":I
    .end local v4    # "i":I
    :cond_5
    :goto_3
    return-object v1

    .line 295
    .end local v1    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v2    # "registrations":[Lcom/sec/ims/ImsRegistration;
    :cond_6
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 16
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p3, "listener"    # Lcom/android/ims/internal/IImsCallSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 301
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    const-string v0, "com.samsung.telephony.extra.CMC_TYPE"

    iget-object v2, v1, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v4, "createCallSession"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/sec/internal/google/ServiceProfile;

    .line 303
    .local v9, "service":Lcom/sec/internal/google/ServiceProfile;
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/google/GoogleImsService;->isOpened(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-object v10, v2

    .local v10, "iVolteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v2, :cond_a

    if-eqz v9, :cond_a

    .line 307
    :try_start_0
    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-interface {v10, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result v2

    sget v3, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v11, v2

    .line 308
    .local v11, "isTtyMode":Z
    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-static {v2, v8, v11}, Lcom/sec/internal/google/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    move-object v12, v2

    .line 309
    .local v12, "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    const/4 v2, 0x0

    .line 310
    .local v2, "cmcType":I
    iget-object v3, v1, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v3, v9}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->setServiceProfile(Lcom/sec/internal/google/ServiceProfile;)V

    .line 311
    iget-object v3, v8, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v6, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v13, v3

    .line 312
    .local v13, "oemExtras":Landroid/os/Bundle;
    if-eqz v13, :cond_2

    .line 313
    const-string v3, "com.samsung.telephony.extra.CALL_START_WITH_JANSKY_MSISDN"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    .local v3, "janskyMsisdn":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v1, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v7

    invoke-interface {v6, v7, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    move-object v7, v6

    .local v7, "normalizedUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v6, :cond_1

    .line 315
    invoke-static {v7}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v12, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    .line 318
    .end local v7    # "normalizedUri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    invoke-virtual {v13, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 319
    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    goto :goto_1

    .line 322
    .end local v3    # "janskyMsisdn":Ljava/lang/String;
    :cond_2
    move v0, v2

    .end local v2    # "cmcType":I
    .local v0, "cmcType":I
    :goto_1
    iget-object v2, v1, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v2, v0, v8, v12, v9}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->prepareCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)I

    move-result v2

    move v14, v2

    .line 323
    .local v14, "cmcType2":I
    if-lez v14, :cond_3

    .line 324
    iget-object v2, v1, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    move v3, v14

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v12

    move-object v7, v9

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->createCallSession(IILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/internal/google/ServiceProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v2

    return-object v2

    .line 326
    :cond_3
    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 327
    .local v2, "registrations":[Lcom/sec/ims/ImsRegistration;
    if-eqz v2, :cond_6

    .line 328
    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v6, v2, v4

    .line 329
    .local v6, "regi":Lcom/sec/ims/ImsRegistration;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v7

    if-ne v14, v7, :cond_5

    invoke-virtual {v12}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v7

    const-string v15, "urn:service:unspecified"

    if-ne v7, v15, :cond_5

    .line 330
    iget-object v7, v1, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 331
    const-string v7, "urn:service:sos"

    invoke-virtual {v12, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    goto :goto_3

    .line 333
    :cond_4
    iget-object v7, v1, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    invoke-virtual {v12, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 334
    const-string v7, ""

    iput-object v7, v1, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    .line 328
    .end local v6    # "regi":Lcom/sec/ims/ImsRegistration;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 339
    :cond_6
    invoke-virtual {v12, v14}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 340
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v12}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_7

    .line 341
    const/16 v3, 0xd

    invoke-virtual {v12, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 342
    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 344
    :cond_7
    invoke-virtual {v1, v9}, Lcom/sec/internal/google/GoogleImsService;->getVolteRegHandle(Lcom/sec/internal/google/ServiceProfile;)I

    move-result v3

    .line 345
    .local v3, "volteRegHandle":I
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, -0x1

    if-ne v3, v6, :cond_8

    iget-object v6, v1, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v14, :cond_8

    invoke-virtual {v9}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v12}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 346
    invoke-virtual {v12, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setForceCSFB(Z)V

    .line 348
    :cond_8
    iget-object v5, v1, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v5, v12}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v5

    .line 349
    .local v5, "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    const-string v6, "CallRadioTech"

    invoke-virtual {v8, v6}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x12

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 350
    new-instance v6, Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-direct {v6, v8, v5, v4, v1}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    move-object v4, v6

    .line 351
    .local v4, "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    iget-object v6, v1, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/google/GoogleImsService;->isEnabledWifiDirectFeature()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 353
    iget-object v6, v1, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v6}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->acquireP2pNetwork()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_9
    return-object v4

    .line 356
    .end local v0    # "cmcType":I
    .end local v2    # "registrations":[Lcom/sec/ims/ImsRegistration;
    .end local v3    # "volteRegHandle":I
    .end local v4    # "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v5    # "secCallSession":Lcom/sec/ims/volte2/IImsCallSession;
    .end local v11    # "isTtyMode":Z
    .end local v12    # "callProfile":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v13    # "oemExtras":Landroid/os/Bundle;
    .end local v14    # "cmcType2":I
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v10    # "iVolteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    :cond_a
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public enterEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 861
    invoke-direct {p0, p1}, Lcom/sec/internal/google/GoogleImsService;->getEcbmInterfaceForPhoneId(I)Lcom/sec/internal/google/ImsEcbmImpl;

    move-result-object v0

    .line 862
    .local v0, "ecbm":Lcom/sec/internal/google/ImsEcbmImpl;
    invoke-virtual {v0}, Lcom/sec/internal/google/ImsEcbmImpl;->enterEmergencyCallbackMode()V

    .line 863
    return-void
.end method

.method public getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;
    .locals 2
    .param p1, "callId"    # I

    .line 709
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ImsCallSessionImpl;

    return-object v0
.end method

.method public getCmcImsServiceUtil()Lcom/sec/internal/google/cmc/CmcImsServiceUtil;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    return-object v0
.end method

.method getCmcTypeFromRegHandle(I)I
    .locals 5
    .param p1, "regHandle"    # I

    .line 963
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 964
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 965
    .local v3, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    if-ne p1, v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 966
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    return v1

    .line 964
    .end local v3    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getConferenceHost()Lcom/sec/internal/google/ImsCallSessionImpl;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    return-object v0
.end method

.method public getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;
    .locals 3
    .param p1, "phoneId"    # I

    .line 467
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getConfigInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsConfig;

    return-object v0

    .line 471
    :cond_0
    new-instance v0, Lcom/sec/internal/google/ImsConfigImpl;

    invoke-direct {v0, p1}, Lcom/sec/internal/google/ImsConfigImpl;-><init>(I)V

    .line 472
    .local v0, "config":Lcom/android/ims/internal/IImsConfig;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    return-object v0
.end method

.method public getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getDeviceType()Lcom/sec/internal/google/cmc/CmcConnectivityController$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface(I)Lcom/sec/internal/google/ImsEcbmImpl;
    .locals 3
    .param p1, "serviceId"    # I

    .line 485
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getEcbmInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 487
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-nez v0, :cond_0

    .line 488
    const/4 v1, 0x0

    return-object v1

    .line 490
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/google/GoogleImsService;->getEcbmInterfaceForPhoneId(I)Lcom/sec/internal/google/ImsEcbmImpl;

    move-result-object v1

    return-object v1
.end method

.method public getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;
    .locals 6

    .line 760
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 761
    .local v0, "imsConfState":Landroid/telephony/ims/ImsConferenceState;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 762
    .local v2, "conference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    iget-object v3, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    .end local v2    # "conference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    goto :goto_0

    .line 764
    :cond_0
    return-object v0
.end method

.method public getImsNotifier()Lcom/sec/internal/google/ImsNotifier;
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    return-object v0
.end method

.method public getMultiEndpointInterface(I)Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 5
    .param p1, "serviceId"    # I

    .line 527
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getMultiEndpointInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 529
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-nez v0, :cond_0

    .line 530
    const/4 v1, 0x0

    return-object v1

    .line 532
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    .line 533
    .local v1, "phoneId":I
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;

    return-object v2

    .line 536
    :cond_1
    new-instance v2, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sec/internal/google/ImsMultiEndPointImpl;-><init>(I)V

    .line 537
    .local v2, "multiEndpoint":Lcom/sec/internal/google/ImsMultiEndPointImpl;
    sget-object v3, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    return-object v2
.end method

.method public getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v0

    return-object v0
.end method

.method public getOirExtraFromDialingNumber(Ljava/lang/String;)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 866
    const-string v0, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 867
    return v1

    .line 869
    :cond_0
    const-string v0, "RESTRICTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "anonymous"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 872
    :cond_1
    const-string v0, "Coin line/payphone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    const/4 v0, 0x4

    return v0

    .line 875
    :cond_2
    const-string v0, "Interaction with other service"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Unavailable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :cond_4
    :goto_0
    return v1

    .line 870
    :cond_5
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I
    .locals 1
    .param p1, "Pletteting"    # Ljava/lang/String;

    .line 879
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Anonymous"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    const/4 v0, 0x1

    return v0

    .line 882
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Coin line/payphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    const/4 v0, 0x4

    return v0

    .line 885
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 886
    const/4 v0, 0x3

    return v0

    .line 888
    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public getParticipantId(Ljava/lang/String;)I
    .locals 4
    .param p1, "user"    # Ljava/lang/String;

    .line 819
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 820
    .local v0, "callId":I
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 821
    return v0

    .line 824
    .end local v0    # "callId":I
    :cond_0
    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 825
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 826
    .local v1, "participant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 827
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 829
    .end local v1    # "participant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    :cond_1
    goto :goto_1

    .line 830
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 16
    .param p1, "serviceId"    # I
    .param p2, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v3, "getPendingCallSession"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ServiceProfile;

    .line 366
    .local v1, "service":Lcom/sec/internal/google/ServiceProfile;
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/google/GoogleImsService;->isOpened(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_e

    if-eqz v1, :cond_e

    .line 369
    invoke-virtual {v1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v2

    .line 370
    .local v2, "phoneId":I
    iget-object v3, v0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-object/from16 v4, p2

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    .line 371
    .local v3, "session":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v6

    aget-object v5, v5, v6

    .line 372
    .local v5, "sessionState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_d

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v6, :cond_d

    .line 375
    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    .line 376
    .local v6, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    new-instance v7, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v8

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getComposerData()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/sec/internal/google/GoogleImsService;->prepareComposerDataBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    new-instance v10, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v10}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    const/4 v11, 0x1

    invoke-direct {v7, v11, v8, v9, v10}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 377
    .local v7, "profile":Landroid/telephony/ims/ImsCallProfile;
    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v8

    .line 378
    .local v8, "registration":Lcom/sec/ims/ImsRegistration;
    const/4 v9, 0x0

    .line 379
    .local v9, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v10, 0x0

    if-eqz v8, :cond_3

    .line 380
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v12

    .line 381
    .local v12, "currentRat":I
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v13

    if-eqz v13, :cond_0

    .line 382
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v12

    .line 384
    :cond_0
    iget-object v13, v0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->isCmcSecondaryType(I)Z

    move-result v13

    const-string v14, "CallRadioTech"

    if-eqz v13, :cond_1

    .line 385
    const/16 v13, 0xe

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v14, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_1
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v14, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :goto_0
    const/16 v13, 0x12

    if-ne v12, v13, :cond_2

    move v13, v11

    goto :goto_1

    :cond_2
    move v13, v10

    :goto_1
    invoke-interface {v3, v13}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgStateNoNotify(Z)V

    .line 390
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 392
    .end local v12    # "currentRat":I
    :cond_3
    const-string v12, "oi"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v12

    iput-object v12, v7, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 394
    sget-object v12, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v9, v12, :cond_4

    .line 395
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/internal/google/GoogleImsService;->getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I

    move-result v12

    .local v12, "oir":I
    goto :goto_2

    .line 397
    .end local v12    # "oir":I
    :cond_4
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v12

    .line 398
    .local v12, "number":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 399
    const-string v12, "unknown"

    .line 401
    :cond_5
    invoke-virtual {v0, v12}, Lcom/sec/internal/google/GoogleImsService;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result v13

    move v12, v13

    .line 403
    .local v12, "oir":I
    :goto_2
    const-string v13, "oir"

    invoke-virtual {v7, v13, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 404
    const-string v13, "cnap"

    invoke-virtual {v7, v13, v12}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 405
    const-string v13, "cna"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v13, "com.samsung.telephony.extra.PHOTO_RING_AVAILABLE"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getPhotoRing()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/2addr v13, v11

    const-string v14, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    invoke-virtual {v7, v14, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 408
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getIsFocus()Ljava/lang/String;

    move-result-object v13

    const-string v14, "1"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v15, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {v7, v15, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 409
    const-string v13, "com.samsung.telephony.extra.DUAL_NUMBER"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v13, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v13, "com.samsung.telephony.extra.ALERT_INFO"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v13, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v13, "com.samsung.telephony.extra.LINE_MSISDN"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v13, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v13, v7, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/ims/volte2/data/MediaProfile;->getRttMode()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 413
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 414
    const-string v13, "com.samsung.telephony.extra.CALL_FORWARDING_REDIRECT_NUMBER"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v13, v15}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v13, "anonymous"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const-string v15, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    if-eqz v13, :cond_6

    .line 416
    invoke-virtual {v7, v15, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 418
    :cond_6
    const-string v13, "0"

    invoke-virtual {v7, v15, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_7
    :goto_3
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 422
    const-string v13, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v13

    const-string v14, "TN-Validation-Passed"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 424
    invoke-virtual {v7, v11}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_4

    .line 425
    :cond_8
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v13

    const-string v14, "TN-Validation-Failed"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 426
    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_4

    .line 428
    :cond_9
    invoke-virtual {v7, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_4

    .line 431
    :cond_a
    invoke-virtual {v7, v10}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 433
    :goto_4
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v13

    if-ne v13, v11, :cond_b

    .line 434
    iput v10, v7, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    goto :goto_5

    .line 436
    :cond_b
    const/4 v10, 0x3

    iput v10, v7, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 438
    :goto_5
    iget-object v10, v0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v10, v2, v7, v3}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->getPendingCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 439
    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v10

    const/4 v11, 0x0

    const-string v13, "GoogleImsService"

    if-gtz v10, :cond_c

    .line 440
    const-string v10, "getPendingCallSession, create imsCallSessionImpl for [NORMAL volte call]"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v10, Lcom/sec/internal/google/ImsCallSessionImpl;

    invoke-direct {v10, v7, v3, v11, v0}, Lcom/sec/internal/google/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    .local v10, "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    goto :goto_6

    .line 443
    .end local v10    # "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    :cond_c
    const-string v10, "getPendingCallSession, create imsCallSessionImpl for [CMC+D2D volte call]"

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v10, Lcom/sec/internal/google/cmc/CmcCallSessionManager;

    iget-object v13, v0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/google/GoogleImsService;->getNsdManager()Lcom/samsung/android/cmcnsd/CmcNsdManager;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/google/GoogleImsService;->isEnabledWifiDirectFeature()Z

    move-result v15

    invoke-direct {v10, v3, v13, v14, v15}, Lcom/sec/internal/google/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/samsung/android/cmcnsd/CmcNsdManager;Z)V

    .line 445
    .local v10, "p2pSessionManager":Lcom/sec/internal/google/cmc/CmcCallSessionManager;
    new-instance v13, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;

    invoke-direct {v13, v7, v10, v11, v0}, Lcom/sec/internal/google/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/google/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/google/GoogleImsService;)V

    move-object v11, v13

    move-object v10, v11

    .line 447
    .local v10, "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    :goto_6
    iget-object v11, v0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallIdInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return-object v10

    .line 373
    .end local v6    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v7    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v8    # "registration":Lcom/sec/ims/ImsRegistration;
    .end local v9    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v10    # "imsCallSessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v12    # "oir":I
    :cond_d
    new-instance v6, Landroid/os/RemoteException;

    invoke-direct {v6}, Landroid/os/RemoteException;-><init>()V

    throw v6

    .line 366
    .end local v2    # "phoneId":I
    .end local v3    # "session":Lcom/sec/ims/volte2/IImsCallSession;
    .end local v5    # "sessionState":Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    :cond_e
    move-object/from16 v4, p2

    .line 367
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public getSmsFormat(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getSmsFormat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    .line 679
    .local v0, "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 682
    aget-object v1, v0, p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/google/ImsSmsImpl;->getSmsFormat(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 680
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "srcMsisdn"    # Ljava/lang/String;
    .param p2, "dstMsisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getTrn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 571
    .local v0, "iVolteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 572
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public getUtInterface(I)Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 5
    .param p1, "serviceId"    # I

    .line 452
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getUtInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 454
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-nez v0, :cond_0

    .line 455
    const/4 v1, 0x0

    return-object v1

    .line 457
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    .line 458
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/stub/ImsUtImplBase;

    return-object v2

    .line 461
    :cond_1
    new-instance v2, Lcom/sec/internal/google/ImsUtImpl;

    invoke-direct {v2, v1}, Lcom/sec/internal/google/ImsUtImpl;-><init>(I)V

    .line 462
    .local v2, "ut":Landroid/telephony/ims/stub/ImsUtImplBase;
    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mUtList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return-object v2
.end method

.method public getVolteRegHandle(Lcom/sec/internal/google/ServiceProfile;)I
    .locals 7
    .param p1, "service"    # Lcom/sec/internal/google/ServiceProfile;

    .line 950
    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getServiceClass()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2

    .line 951
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 952
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 953
    .local v4, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_0

    .line 954
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    return v1

    .line 952
    .end local v4    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 957
    :cond_1
    return v2

    .line 959
    .end local v0    # "registrationList":[Lcom/sec/ims/ImsRegistration;
    :cond_2
    return v2
.end method

.method public hasConferenceHost()Z
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "isCmcEmergencyCallSupported"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyCallSupported()Z

    move-result v0

    return v0

    .line 588
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public isConnected(III)Z
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "isConnected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public isEnabledWifiDirectFeature()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    return v0
.end method

.method public isInitialMerge()Z
    .locals 1

    .line 701
    iget-boolean v0, p0, Lcom/sec/internal/google/GoogleImsService;->mIsInitialMerge:Z

    return v0
.end method

.method public isOpened(I)Z
    .locals 3
    .param p1, "serviceId"    # I

    .line 241
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "isOpened"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 983
    invoke-direct {p0, p2}, Lcom/sec/internal/google/GoogleImsService;->extractOwnUrisFromReg(Lcom/sec/ims/ImsRegistration;)[Landroid/net/Uri;

    move-result-object v0

    .line 984
    .local v0, "latestUris":[Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    const/4 v1, 0x0

    return v1

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const/4 v1, 0x1

    return v1
.end method

.method public onCallClosed(I)V
    .locals 2
    .param p1, "callIdInt"    # I

    .line 925
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    return-void
.end method

.method public onSmsReady(I)V
    .locals 4
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "onSmsReady"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    .line 659
    .local v0, "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 660
    new-instance v1, Lcom/sec/internal/google/ImsSmsImpl;

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-direct {v1, v2, p1, v3}, Lcom/sec/internal/google/ImsSmsImpl;-><init>(Landroid/content/Context;ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    aput-object v1, v0, p1

    goto :goto_0

    .line 662
    :cond_0
    aget-object v1, v0, p1

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/ImsSmsImpl;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 664
    :goto_0
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    aget-object v1, v1, p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/google/ImsSmsImpl;->updateTPMR(I)V

    .line 665
    return-void
.end method

.method public open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "incomingCallIntent"    # Landroid/app/PendingIntent;
    .param p4, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 191
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    .line 193
    .local v1, "volteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    iput-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 194
    if-eqz v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v2, "Not ready to open"

    invoke-direct {v0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    .end local v1    # "volteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;-><init>(II)V

    .line 199
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 204
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 205
    invoke-direct {p0}, Lcom/sec/internal/google/GoogleImsService;->getIncreasedServiceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 206
    .local v1, "serviceId":I
    new-instance v2, Lcom/sec/internal/google/ServiceProfile;

    invoke-direct {v2, p1, p2, p4, p3}, Lcom/sec/internal/google/ServiceProfile;-><init>(IILcom/android/ims/internal/IImsRegistrationListener;Landroid/app/PendingIntent;)V

    .line 207
    .local v2, "newServiceProfile":Lcom/sec/internal/google/ServiceProfile;
    sget-object v3, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/sec/internal/google/DataTypeConvertor;->convertToGoogleImsReason(I)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-interface {p4, v3}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 209
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 210
    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v3, v3, p1

    invoke-virtual {p0, v3}, Lcom/sec/internal/google/GoogleImsService;->convertCapaToFeature(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)[I

    move-result-object v3

    move-object v4, v0

    check-cast v4, [I

    invoke-interface {p4, p2, v3, v0}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationFeatureCapabilityChanged(I[I[I)V

    .line 211
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 212
    .local v0, "registrationList":[Lcom/sec/ims/ImsRegistration;
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 213
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 214
    .local v5, "reg":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyRegistrationListenerRegistered with rat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ServiceProfile"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/google/GoogleImsService;->getRegistrationTech(I)I

    move-result v6

    invoke-interface {p4, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationConnectedWithRadioTech(I)V

    .line 217
    invoke-virtual {p0, p1, v5}, Lcom/sec/internal/google/GoogleImsService;->isOwnUrisChanged(ILcom/sec/ims/ImsRegistration;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    iget-object v6, p0, Lcom/sec/internal/google/GoogleImsService;->mOwnUris:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/Uri;

    invoke-interface {p4, v6}, Lcom/android/ims/internal/IImsRegistrationListener;->registrationAssociatedUriChanged([Landroid/net/Uri;)V

    .line 213
    .end local v5    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "registrationList":[Lcom/sec/ims/ImsRegistration;
    :cond_3
    return v1

    .line 189
    .end local v1    # "serviceId":I
    .end local v2    # "newServiceProfile":Lcom/sec/internal/google/ServiceProfile;
    :cond_4
    throw v0
.end method

.method public prepareComposerDataBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "cBundle"    # Landroid/os/Bundle;

    .line 996
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 997
    .local v0, "callExtras":Landroid/os/Bundle;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 998
    const-string v1, "importance"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 999
    const-string v2, "EXTRA_CALL_IMPORTANCE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1001
    :cond_0
    const-string v1, "image"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1002
    const-string v2, "EXTRA_CALL_IMAGE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_1
    const-string v1, "subject"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1005
    const-string v2, "EXTRA_CALL_SUBJECT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_2
    const-string v1, "longitude"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1008
    const-string v2, "EXTRA_CALL_LONGITUDE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_3
    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1011
    const-string v2, "EXTRA_CALL_LATITUDE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :cond_4
    const-string v1, "radius"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1014
    const-string v2, "EXTRA_CALL_RADIUS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    :cond_5
    return-object v0
.end method

.method public preparePushCall(Lcom/sec/ims/DialogEvent;)V
    .locals 4
    .param p1, "de"    # Lcom/sec/ims/DialogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preparePushCall(), size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleImsService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 130
    const-string v0, "Push for [PD]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsCallSessionImpl;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 133
    .local v2, "sessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    iget-object v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/google/ImsCallSessionImpl;->isP2pPrimaryType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x1777

    invoke-direct {v0, v3, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 135
    .local v0, "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v3, v2, Lcom/sec/internal/google/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {v3, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 136
    return-void

    .line 138
    .end local v0    # "reasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/google/ImsCallSessionImpl;>;"
    .end local v2    # "sessionImpl":Lcom/sec/internal/google/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 139
    :cond_2
    if-eqz p1, :cond_3

    .line 140
    const-string v0, "Push for [SD]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/google/GoogleImsService;->getCmcTypeFromRegHandle(I)I

    move-result v0

    .line 142
    .local v0, "deCmcType":I
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mMultEndPoints:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/google/ImsMultiEndPointImpl;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/google/ImsMultiEndPointImpl;->setP2pPushDialogInfo(Lcom/sec/ims/DialogEvent;I)V

    .line 144
    .end local v0    # "deCmcType":I
    :cond_3
    :goto_1
    return-void
.end method

.method public putConferenceState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "endPoint"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 721
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 722
    .local v0, "confState":Landroid/os/Bundle;
    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v1, "status"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v1, "callId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    const-string v1, "cna"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v1, "cnap"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 728
    const-string v1, "oir"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    invoke-virtual {p5}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    const-string v2, "audioQuality"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 730
    const-string v1, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    const-string v1, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {p5, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    return-void
.end method

.method public putConferenceStateList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callId"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "endPoint"    # Ljava/lang/String;
    .param p5, "status"    # Ljava/lang/String;
    .param p6, "sipError"    # I
    .param p7, "callprofile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 736
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 737
    .local v0, "confState":Landroid/os/Bundle;
    const-string v1, "user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v1, "status"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v1, "callId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 741
    const-string v1, "sipError"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 742
    const-string v1, "uriType"

    const-string v2, "tel"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v1, "cna"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v1, "cnap"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 745
    const-string v1, "oir"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 746
    invoke-virtual {p7}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    const-string v2, "audioQuality"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 747
    const-string v1, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 748
    const-string v1, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {p7, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v1, "disconnected"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    const-string v1, "disconnectCause"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    return-void
.end method

.method public removeConferenceState(I)V
    .locals 2
    .param p1, "callId"    # I

    .line 756
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    return-void
.end method

.method public removeRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 246
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "removeRegistrationListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 248
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p2}, Lcom/sec/internal/google/ServiceProfile;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 250
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "publishDialog"    # Lcom/android/internal/telephony/PublishDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "sendPublishDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    .line 583
    return-void

    .line 580
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public sendRpSmma(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "sendRpSmma"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    .line 670
    .local v0, "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 673
    aget-object v1, v0, p1

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/google/ImsSmsImpl;->sendRpSmma(ILjava/lang/String;)V

    .line 674
    return-void

    .line 671
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "messageRef"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "smsc"    # Ljava/lang/String;
    .param p6, "isRetry"    # Z
    .param p7, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    move-object v7, p0

    iget-object v0, v7, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "sendSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    sget-object v8, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    .line 601
    .local v8, "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    aget-object v0, v8, p1

    if-eqz v0, :cond_0

    .line 604
    aget-object v0, v8, p1

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/google/ImsSmsImpl;->sendSms(IIILjava/lang/String;Ljava/lang/String;[B)V

    .line 605
    return-void

    .line 602
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public setCallSession(ILcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "sessionImpl"    # Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 713
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    return-void
.end method

.method public setConferenceHost(Lcom/sec/internal/google/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "hostSession"    # Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 690
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mConferenceHost:Lcom/sec/internal/google/ImsCallSessionImpl;

    .line 691
    if-nez p1, :cond_0

    .line 692
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 694
    :cond_0
    return-void
.end method

.method public setConnectivityController(Lcom/sec/internal/google/cmc/CmcConnectivityController;)V
    .locals 4
    .param p1, "cController"    # Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 106
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    .line 107
    new-instance v0, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;-><init>(Landroid/content/Context;Lcom/sec/internal/google/GoogleImsService;Lcom/sec/internal/google/cmc/CmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    iput-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCmcImsServiceUtil:Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    .line 108
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mConnectivityController:Lcom/sec/internal/google/cmc/CmcConnectivityController;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/cmc/CmcConnectivityController;->setPhoneId(I)V

    .line 109
    return-void
.end method

.method public setInitialMerge(Z)V
    .locals 0
    .param p1, "initialMerge"    # Z

    .line 705
    iput-boolean p1, p0, Lcom/sec/internal/google/GoogleImsService;->mIsInitialMerge:Z

    .line 706
    return-void
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 255
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "setRegistrationListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 257
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0, p2}, Lcom/sec/internal/google/ServiceProfile;->setRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    .line 259
    sget-object v1, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_0
    return-void
.end method

.method public setRetryCount(III)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "token"    # I
    .param p3, "retryCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 608
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "sendSms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    .line 610
    .local v0, "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    .line 613
    aget-object v1, v0, p1

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/google/ImsSmsImpl;->setRetryCount(III)V

    .line 614
    return-void

    .line 611
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public setServiceUrn(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServiceUrn"    # Ljava/lang/String;

    .line 717
    iput-object p1, p0, Lcom/sec/internal/google/GoogleImsService;->mServiceUrn:Ljava/lang/String;

    .line 718
    return-void
.end method

.method public setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Landroid/telephony/ims/aidl/IImsSmsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "setSmsListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 647
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 650
    return-void

    .line 652
    :cond_1
    iput-object p2, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    .line 653
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mSmsListenerList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mSmsListener:Landroid/telephony/ims/aidl/IImsSmsListener;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    return-void
.end method

.method public setTtyMode(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "setTtyMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 520
    .local v0, "iVolteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setTtyMode(II)V

    .line 524
    return-void

    .line 521
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "setUiTTYMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-object v0, Lcom/sec/internal/google/GoogleImsService;->mServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/google/ServiceProfile;

    .line 506
    .local v0, "service":Lcom/sec/internal/google/ServiceProfile;
    if-nez v0, :cond_0

    .line 507
    return-void

    .line 509
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/google/ServiceProfile;->getPhoneId()I

    move-result v1

    .line 510
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 511
    .local v2, "iVolteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v2, :cond_1

    .line 514
    invoke-interface {v2, v1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setUiTTYMode(IILandroid/os/Message;)V

    .line 515
    return-void

    .line 512
    :cond_1
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3
.end method

.method public startLocalRingBackTone(III)I
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "startLocalRingBackTone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 553
    .local v0, "iVolteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->startLocalRingBackTone(III)I

    move-result v1

    return v1

    .line 554
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public stopLocalRingBackTone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "stopLocalRingBackTone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 562
    .local v0, "iVolteServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    if-eqz v0, :cond_0

    .line 565
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->stopLocalRingBackTone()I

    move-result v1

    return v1

    .line 563
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 3
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "triggerAutoConfigurationForApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->triggerAutoConfigurationForApp(I)V

    .line 596
    return-void
.end method

.method public turnOffIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 481
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "turnOffIms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public turnOnIms(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 477
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "turnOnIms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public updateCapabilities(ILandroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 893
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-virtual {p2}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    aput-object v1, v0, p1

    .line 895
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/ImsNotifier;->notifyFeatureCapableChanged(I)V

    .line 897
    :cond_0
    return-void
.end method

.method public updateCapabilities(I[I[Z)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "capabilities"    # [I
    .param p3, "capables"    # [Z

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCapabilities, phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleImsService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v0, 0x0

    .line 903
    .local v0, "capabilityUpdated":Z
    const/4 v1, 0x0

    .local v1, "capability":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 904
    aget-boolean v2, p3, v1

    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v3, v3, p1

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 905
    aget-boolean v2, p3, v1

    if-eqz v2, :cond_1

    .line 906
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v2, v2, p1

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 907
    aget v2, p2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 908
    sget-object v2, Lcom/sec/internal/google/GoogleImsService;->mSmsImpl:[Lcom/sec/internal/google/ImsSmsImpl;

    .line 909
    .local v2, "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 910
    aget-object v3, v2, p1

    invoke-virtual {v3, p1}, Lcom/sec/internal/google/ImsSmsImpl;->updateTPMR(I)V

    .line 912
    .end local v2    # "imsSmsImplArr":[Lcom/sec/internal/google/ImsSmsImpl;
    :cond_0
    goto :goto_1

    .line 914
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/google/GoogleImsService;->mCapabilities:[Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    aget-object v2, v2, p1

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    .line 916
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 903
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 919
    .end local v1    # "capability":I
    :cond_4
    if-eqz v0, :cond_5

    .line 920
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsNotifier:Lcom/sec/internal/google/ImsNotifier;

    invoke-virtual {v1, p1}, Lcom/sec/internal/google/ImsNotifier;->notifyFeatureCapableChanged(I)V

    .line 922
    :cond_5
    return-void
.end method

.method public updateParticipant(ILjava/lang/String;)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "status"    # Ljava/lang/String;

    .line 834
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 835
    return-void
.end method

.method public updateParticipant(ILjava/lang/String;I)V
    .locals 6
    .param p1, "callId"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "disconnectCause"    # I

    .line 838
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/google/GoogleImsService;->updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 839
    return-void
.end method

.method public updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "endPoint"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "disconnectCause"    # I

    .line 842
    iget-object v0, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 843
    .local v0, "confState":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 844
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 845
    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 848
    const-string v1, "endpoint"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 851
    const-string v1, "status"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_2
    const/4 v1, -0x1

    if-eq p5, v1, :cond_3

    .line 854
    const-string v1, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 856
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    :cond_4
    return-void
.end method

.method public updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 14
    .param p1, "callProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 768
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 769
    .local v0, "newSecConferenceInfo":Landroid/os/Bundle;
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "secConferenceInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 770
    .local v1, "oldSecConferenceInfo":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/internal/google/GoogleImsService;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 771
    .local v4, "conference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 772
    .local v5, "callId":Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 773
    .local v6, "newValue":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 774
    .local v7, "oldValue":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 775
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 777
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 778
    goto :goto_2

    .line 780
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 781
    .local v9, "oldCallId":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 782
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 783
    goto :goto_2

    .line 785
    .end local v9    # "oldCallId":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 787
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    .line 788
    invoke-virtual {v7, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 789
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 791
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v8

    .line 792
    .local v8, "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    const-string v9, "callId"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 793
    .local v9, "origCallId":I
    if-lez v9, :cond_4

    .line 794
    invoke-virtual {p0, v9}, Lcom/sec/internal/google/GoogleImsService;->getCallSession(I)Lcom/sec/internal/google/ImsCallSessionImpl;

    move-result-object v8

    .line 796
    :cond_4
    if-eqz v8, :cond_7

    .line 797
    invoke-virtual {v8}, Lcom/sec/internal/google/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v10

    .line 798
    .local v10, "profile":Landroid/telephony/ims/ImsCallProfile;
    const-string v11, "cna"

    invoke-virtual {v10, v11}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const/4 v11, 0x0

    .line 801
    .local v11, "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :try_start_0
    iget-object v12, p0, Lcom/sec/internal/google/GoogleImsService;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v12

    .line 802
    .local v12, "s":Lcom/sec/ims/volte2/IImsCallSession;
    if-eqz v12, :cond_5

    .line 803
    invoke-interface {v12}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v13
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v13

    .line 806
    .end local v12    # "s":Lcom/sec/ims/volte2/IImsCallSession;
    :cond_5
    goto :goto_3

    .line 805
    :catch_0
    move-exception v12

    .line 807
    :goto_3
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 808
    const-string v12, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 813
    .end local v4    # "conference":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    .end local v5    # "callId":Ljava/lang/Integer;
    .end local v6    # "newValue":Landroid/os/Bundle;
    .end local v7    # "oldValue":Landroid/os/Bundle;
    .end local v8    # "session":Lcom/sec/internal/google/ImsCallSessionImpl;
    .end local v9    # "origCallId":I
    .end local v10    # "profile":Landroid/telephony/ims/ImsCallProfile;
    .end local v11    # "cp":Lcom/sec/ims/volte2/data/CallProfile;
    :cond_7
    :goto_4
    goto/16 :goto_0

    .line 814
    :cond_8
    iget-object v3, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 815
    return-void
.end method
