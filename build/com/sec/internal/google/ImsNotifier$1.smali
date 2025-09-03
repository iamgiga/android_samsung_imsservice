.class Lcom/sec/internal/google/ImsNotifier$1;
.super Ljava/lang/Object;
.source "ImsNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/google/ImsNotifier;->onP2pRegCompleteEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsNotifier;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/google/ImsNotifier;

    .line 150
    iput-object p1, p0, Lcom/sec/internal/google/ImsNotifier$1;->this$0:Lcom/sec/internal/google/ImsNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier$1;->this$0:Lcom/sec/internal/google/ImsNotifier;

    invoke-static {v0}, Lcom/sec/internal/google/ImsNotifier;->access$000(Lcom/sec/internal/google/ImsNotifier;)Lcom/sec/internal/google/GoogleImsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/google/GoogleImsService;->getCmcImsServiceUtil()Lcom/sec/internal/google/cmc/CmcImsServiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/google/cmc/CmcImsServiceUtil;->createCmcCallSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    :goto_0
    return-void
.end method
