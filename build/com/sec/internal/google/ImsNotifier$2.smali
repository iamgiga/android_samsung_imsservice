.class Lcom/sec/internal/google/ImsNotifier$2;
.super Ljava/lang/Object;
.source "ImsNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/google/ImsNotifier;->onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/ImsNotifier;

.field final synthetic val$de:Lcom/sec/ims/DialogEvent;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/ImsNotifier;Lcom/sec/ims/DialogEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/google/ImsNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/sec/internal/google/ImsNotifier$2;->this$0:Lcom/sec/internal/google/ImsNotifier;

    iput-object p2, p0, Lcom/sec/internal/google/ImsNotifier$2;->val$de:Lcom/sec/ims/DialogEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/google/ImsNotifier$2;->this$0:Lcom/sec/internal/google/ImsNotifier;

    invoke-static {v0}, Lcom/sec/internal/google/ImsNotifier;->access$000(Lcom/sec/internal/google/ImsNotifier;)Lcom/sec/internal/google/GoogleImsService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/google/ImsNotifier$2;->val$de:Lcom/sec/ims/DialogEvent;

    invoke-virtual {v0, v1}, Lcom/sec/internal/google/GoogleImsService;->preparePushCall(Lcom/sec/ims/DialogEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    :goto_0
    return-void
.end method
