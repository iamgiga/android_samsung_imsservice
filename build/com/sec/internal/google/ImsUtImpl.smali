.class public Lcom/sec/internal/google/ImsUtImpl;
.super Landroid/telephony/ims/stub/ImsUtImplBase;
.source "ImsUtImpl.java"


# instance fields
.field private mListener:Landroid/telephony/ims/ImsUtListener;

.field private mPhoneId:I

.field private mUtEventListener:Lcom/sec/ims/ss/IImsUtEventListener;

.field private mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 100
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsUtImplBase;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 19
    new-instance v1, Lcom/sec/internal/google/ImsUtImpl$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/google/ImsUtImpl$1;-><init>(Lcom/sec/internal/google/ImsUtImpl;)V

    iput-object v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtEventListener:Lcom/sec/ims/ss/IImsUtEventListener;

    .line 101
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    .line 102
    iput-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 103
    iput p1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    .line 104
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v0

    .line 105
    .local v0, "utServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    iput-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 106
    if-eqz v0, :cond_0

    .line 107
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtEventListener:Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/google/ImsUtImpl;)Landroid/telephony/ims/ImsUtListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsUtImpl;

    .line 15
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/google/ImsUtImpl;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/google/ImsUtImpl;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/internal/google/ImsUtImpl;->convertErrorReasonToFw(I)I

    move-result v0

    return v0
.end method

.method private convertErrorReasonToFw(I)I
    .locals 1
    .param p1, "error"    # I

    .line 327
    const/16 v0, 0x193

    if-eq p1, v0, :cond_3

    .line 328
    const/16 v0, 0x194

    if-eq p1, v0, :cond_2

    .line 329
    const/16 v0, 0x198

    if-eq p1, v0, :cond_1

    .line 330
    const/16 v0, 0x1389

    if-eq p1, v0, :cond_0

    .line 331
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_0
    const/16 v0, 0x325

    return v0

    .line 335
    :cond_1
    const/16 v0, 0x324

    return v0

    .line 337
    :cond_2
    const/16 v0, 0x321

    return v0

    .line 339
    :cond_3
    const/16 v0, 0x323

    return v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 113
    return-void
.end method

.method public isUssdEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->isUssdEnabled(I)Z

    move-result v0

    return v0
.end method

.method public queryCLIP()I
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 194
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 195
    const/4 v1, -0x1

    return v1

    .line 197
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCLIP(I)I

    move-result v1

    return v1
.end method

.method public queryCLIR()I
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 145
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 146
    const/4 v1, -0x1

    return v1

    .line 148
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCLIR(I)I

    move-result v1

    return v1
.end method

.method public queryCOLP()I
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 212
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 213
    const/4 v1, -0x1

    return v1

    .line 215
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCOLP(I)I

    move-result v1

    return v1
.end method

.method public queryCOLR()I
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 203
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 204
    const/4 v1, -0x1

    return v1

    .line 206
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCOLR(I)I

    move-result v1

    return v1
.end method

.method public queryCallBarring(I)I
    .locals 3
    .param p1, "cbType"    # I

    .line 117
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 118
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 119
    const/4 v1, -0x1

    return v1

    .line 121
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    const/16 v2, 0xff

    invoke-interface {v0, v1, p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallBarring(III)I

    move-result v1

    return v1
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 2
    .param p1, "cbType"    # I
    .param p2, "serviceClass"    # I

    .line 304
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 305
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 306
    const/4 v1, -0x1

    return v1

    .line 308
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallBarring(III)I

    move-result v1

    return v1
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 2
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 127
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 128
    const/4 v1, -0x1

    return v1

    .line 130
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallForward(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public queryCallWaiting()I
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 136
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 137
    const/4 v1, -0x1

    return v1

    .line 139
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->queryCallWaiting(I)I

    move-result v1

    return v1
.end method

.method public queryClip()I
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsUtImpl;->queryCLIP()I

    move-result v0

    return v0
.end method

.method public queryClir()I
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsUtImpl;->queryCLIR()I

    move-result v0

    return v0
.end method

.method public queryColp()I
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsUtImpl;->queryCOLP()I

    move-result v0

    return v0
.end method

.method public queryColr()I
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/sec/internal/google/ImsUtImpl;->queryCOLR()I

    move-result v0

    return v0
.end method

.method public setListener(Landroid/telephony/ims/ImsUtListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telephony/ims/ImsUtListener;

    .line 299
    iput-object p1, p0, Lcom/sec/internal/google/ImsUtImpl;->mListener:Landroid/telephony/ims/ImsUtListener;

    .line 300
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "ssInfo"    # Landroid/os/Bundle;

    .line 220
    const/4 v0, -0x1

    return v0
.end method

.method public updateCLIP(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .line 273
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 274
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 275
    const/4 v1, -0x1

    return v1

    .line 277
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCLIP(IZ)I

    move-result v1

    return v1
.end method

.method public updateCLIR(I)I
    .locals 2
    .param p1, "clirMode"    # I

    .line 264
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 265
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 266
    const/4 v1, -0x1

    return v1

    .line 268
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCLIR(II)I

    move-result v1

    return v1
.end method

.method public updateCOLP(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .line 291
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 292
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 293
    const/4 v1, -0x1

    return v1

    .line 295
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCOLP(IZ)I

    move-result v1

    return v1
.end method

.method public updateCOLR(I)I
    .locals 2
    .param p1, "presentation"    # I

    .line 282
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 283
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 284
    const/4 v1, -0x1

    return v1

    .line 286
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCOLR(II)I

    move-result v1

    return v1
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 8
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;

    .line 225
    iget-object v7, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 226
    .local v7, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v7, :cond_0

    .line 227
    const/4 v0, -0x1

    return v0

    .line 229
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    const/16 v4, 0xff

    const/4 v5, 0x0

    move-object v0, v7

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 8
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I

    .line 314
    iget-object v7, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 315
    .local v7, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v7, :cond_0

    .line 316
    const/4 v0, -0x1

    return v0

    .line 318
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    const/4 v5, 0x0

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "barrList"    # [Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;

    .line 235
    iget-object v7, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 236
    .local v7, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v7, :cond_0

    .line 237
    const/4 v0, -0x1

    return v0

    .line 239
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 8
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I

    .line 246
    iget-object v7, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 247
    .local v7, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v7, :cond_0

    .line 248
    const/4 v0, -0x1

    return v0

    .line 250
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    move-object v0, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallForward(IIILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 2
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I

    .line 255
    iget-object v0, p0, Lcom/sec/internal/google/ImsUtImpl;->mUtService:Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    .line 256
    .local v0, "iUtServiceModule":Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    if-nez v0, :cond_0

    .line 257
    const/4 v1, -0x1

    return v1

    .line 259
    :cond_0
    iget v1, p0, Lcom/sec/internal/google/ImsUtImpl;->mPhoneId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->updateCallWaiting(IZI)I

    move-result v1

    return v1
.end method

.method public updateClip(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 178
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsUtImpl;->updateCLIP(Z)I

    move-result v0

    return v0
.end method

.method public updateClir(I)I
    .locals 1
    .param p1, "clirMode"    # I

    .line 173
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsUtImpl;->updateCLIR(I)I

    move-result v0

    return v0
.end method

.method public updateColp(Z)I
    .locals 1
    .param p1, "enable"    # Z

    .line 188
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsUtImpl;->updateCOLP(Z)I

    move-result v0

    return v0
.end method

.method public updateColr(I)I
    .locals 1
    .param p1, "presentation"    # I

    .line 183
    invoke-virtual {p0, p1}, Lcom/sec/internal/google/ImsUtImpl;->updateCOLR(I)I

    move-result v0

    return v0
.end method
