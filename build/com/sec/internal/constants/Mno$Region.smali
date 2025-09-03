.class public final enum Lcom/sec/internal/constants/Mno$Region;
.super Ljava/lang/Enum;
.source "Mno.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/Mno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Region"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/Mno$Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/Mno$Region;

.field public static final enum AFRICA:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum EAST_ASIA:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum END_OF_REGION:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum EUROPE:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum GCF:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum MIDDLE_EAST:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum NORTH_AMERICA:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum OCEANIA:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum SOUTH_AMERICA:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum SOUTH_EAST_ASIA:Lcom/sec/internal/constants/Mno$Region;

.field public static final enum SOUTH_WEST_ASIA:Lcom/sec/internal/constants/Mno$Region;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/Mno$Region;
    .locals 11

    .line 367
    sget-object v0, Lcom/sec/internal/constants/Mno$Region;->GCF:Lcom/sec/internal/constants/Mno$Region;

    sget-object v1, Lcom/sec/internal/constants/Mno$Region;->EAST_ASIA:Lcom/sec/internal/constants/Mno$Region;

    sget-object v2, Lcom/sec/internal/constants/Mno$Region;->SOUTH_EAST_ASIA:Lcom/sec/internal/constants/Mno$Region;

    sget-object v3, Lcom/sec/internal/constants/Mno$Region;->SOUTH_WEST_ASIA:Lcom/sec/internal/constants/Mno$Region;

    sget-object v4, Lcom/sec/internal/constants/Mno$Region;->MIDDLE_EAST:Lcom/sec/internal/constants/Mno$Region;

    sget-object v5, Lcom/sec/internal/constants/Mno$Region;->EUROPE:Lcom/sec/internal/constants/Mno$Region;

    sget-object v6, Lcom/sec/internal/constants/Mno$Region;->NORTH_AMERICA:Lcom/sec/internal/constants/Mno$Region;

    sget-object v7, Lcom/sec/internal/constants/Mno$Region;->SOUTH_AMERICA:Lcom/sec/internal/constants/Mno$Region;

    sget-object v8, Lcom/sec/internal/constants/Mno$Region;->AFRICA:Lcom/sec/internal/constants/Mno$Region;

    sget-object v9, Lcom/sec/internal/constants/Mno$Region;->OCEANIA:Lcom/sec/internal/constants/Mno$Region;

    sget-object v10, Lcom/sec/internal/constants/Mno$Region;->END_OF_REGION:Lcom/sec/internal/constants/Mno$Region;

    filled-new-array/range {v0 .. v10}, [Lcom/sec/internal/constants/Mno$Region;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 368
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "GCF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->GCF:Lcom/sec/internal/constants/Mno$Region;

    .line 369
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "EAST_ASIA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->EAST_ASIA:Lcom/sec/internal/constants/Mno$Region;

    .line 370
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "SOUTH_EAST_ASIA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->SOUTH_EAST_ASIA:Lcom/sec/internal/constants/Mno$Region;

    .line 371
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "SOUTH_WEST_ASIA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->SOUTH_WEST_ASIA:Lcom/sec/internal/constants/Mno$Region;

    .line 372
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "MIDDLE_EAST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->MIDDLE_EAST:Lcom/sec/internal/constants/Mno$Region;

    .line 373
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "EUROPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->EUROPE:Lcom/sec/internal/constants/Mno$Region;

    .line 374
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "NORTH_AMERICA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->NORTH_AMERICA:Lcom/sec/internal/constants/Mno$Region;

    .line 375
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "SOUTH_AMERICA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->SOUTH_AMERICA:Lcom/sec/internal/constants/Mno$Region;

    .line 376
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "AFRICA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->AFRICA:Lcom/sec/internal/constants/Mno$Region;

    .line 377
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "OCEANIA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->OCEANIA:Lcom/sec/internal/constants/Mno$Region;

    .line 378
    new-instance v0, Lcom/sec/internal/constants/Mno$Region;

    const-string v1, "END_OF_REGION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/Mno$Region;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->END_OF_REGION:Lcom/sec/internal/constants/Mno$Region;

    .line 367
    invoke-static {}, Lcom/sec/internal/constants/Mno$Region;->$values()[Lcom/sec/internal/constants/Mno$Region;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/Mno$Region;->$VALUES:[Lcom/sec/internal/constants/Mno$Region;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 367
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/Mno$Region;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 367
    const-class v0, Lcom/sec/internal/constants/Mno$Region;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/Mno$Region;

    return-object v0
.end method

.method public static values()[Lcom/sec/internal/constants/Mno$Region;
    .locals 1

    .line 367
    sget-object v0, Lcom/sec/internal/constants/Mno$Region;->$VALUES:[Lcom/sec/internal/constants/Mno$Region;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/Mno$Region;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/Mno$Region;

    return-object v0
.end method
