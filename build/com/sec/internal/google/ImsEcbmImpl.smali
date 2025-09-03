.class public Lcom/sec/internal/google/ImsEcbmImpl;
.super Landroid/telephony/ims/stub/ImsEcbmImplBase;
.source "ImsEcbmImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public enterEmergencyCallbackMode()V
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsEcbmImpl;->enteredEcbm()V

    .line 11
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsEcbmImpl;->exitedEcbm()V

    .line 20
    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/internal/IImsEcbmListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsEcbmImpl;->getImsEcbm()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsEcbm;->setListener(Lcom/android/ims/internal/IImsEcbmListener;)V

    .line 15
    return-void
.end method
