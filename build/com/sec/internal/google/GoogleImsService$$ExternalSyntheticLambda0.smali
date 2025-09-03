.class public final synthetic Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/sec/internal/google/GoogleImsService$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/sec/internal/google/GoogleImsService;->lambda$open$0(IILjava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
