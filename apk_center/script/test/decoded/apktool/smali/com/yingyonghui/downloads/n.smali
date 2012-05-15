.class final Lcom/yingyonghui/downloads/n;
.super Ljava/lang/Object;
.source "Helpers.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Set;

.field private c:I

.field private d:I

.field private final e:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    iput v3, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 643
    iput v3, p0, Lcom/yingyonghui/downloads/n;->d:I

    .line 647
    iput-object p1, p0, Lcom/yingyonghui/downloads/n;->a:Ljava/lang/String;

    .line 648
    iput-object p2, p0, Lcom/yingyonghui/downloads/n;->b:Ljava/util/Set;

    .line 649
    iget-object v0, p0, Lcom/yingyonghui/downloads/n;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/yingyonghui/downloads/n;->e:[C

    .line 650
    iget-object v0, p0, Lcom/yingyonghui/downloads/n;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/yingyonghui/downloads/n;->e:[C

    array-length v1, v1

    iget-object v2, p0, Lcom/yingyonghui/downloads/n;->e:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 651
    invoke-virtual {p0}, Lcom/yingyonghui/downloads/n;->b()V

    .line 652
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 655
    iget v0, p0, Lcom/yingyonghui/downloads/n;->d:I

    return v0
.end method

.method public final b()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x27

    const/4 v2, 0x1

    const/4 v6, 0x5

    const/16 v5, 0x3d

    .line 659
    iget-object v3, p0, Lcom/yingyonghui/downloads/n;->e:[C

    .line 662
    :goto_0
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    array-length v4, v3

    if-ge v0, v4, :cond_0

    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x20

    if-ne v0, v4, :cond_0

    .line 663
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    goto :goto_0

    .line 667
    :cond_0
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    array-length v4, v3

    if-ne v0, v4, :cond_2

    .line 668
    const/16 v0, 0x9

    iput v0, p0, Lcom/yingyonghui/downloads/n;->d:I

    .line 785
    :cond_1
    :goto_1
    return-void

    .line 673
    :cond_2
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x28

    if-ne v0, v4, :cond_3

    .line 674
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 675
    iput v2, p0, Lcom/yingyonghui/downloads/n;->d:I

    goto :goto_1

    .line 680
    :cond_3
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x29

    if-ne v0, v4, :cond_4

    .line 681
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 682
    const/4 v0, 0x2

    iput v0, p0, Lcom/yingyonghui/downloads/n;->d:I

    goto :goto_1

    .line 687
    :cond_4
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_5

    .line 688
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 689
    const/4 v0, 0x6

    iput v0, p0, Lcom/yingyonghui/downloads/n;->d:I

    goto :goto_1

    .line 694
    :cond_5
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    if-ne v0, v5, :cond_6

    .line 695
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 696
    iput v6, p0, Lcom/yingyonghui/downloads/n;->d:I

    .line 697
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    if-ne v0, v5, :cond_1

    .line 698
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    goto :goto_1

    .line 704
    :cond_6
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x3e

    if-ne v0, v4, :cond_7

    .line 705
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 706
    iput v6, p0, Lcom/yingyonghui/downloads/n;->d:I

    .line 707
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    if-ne v0, v5, :cond_1

    .line 708
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    goto :goto_1

    .line 714
    :cond_7
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x3c

    if-ne v0, v4, :cond_9

    .line 715
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 716
    iput v6, p0, Lcom/yingyonghui/downloads/n;->d:I

    .line 717
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    if-eq v0, v5, :cond_8

    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    .line 718
    :cond_8
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    goto/16 :goto_1

    .line 724
    :cond_9
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x21

    if-ne v0, v4, :cond_b

    .line 725
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 726
    iput v6, p0, Lcom/yingyonghui/downloads/n;->d:I

    .line 727
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    if-ne v0, v5, :cond_a

    .line 728
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    goto/16 :goto_1

    .line 731
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected character after !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_b
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_d

    const/16 v4, 0x41

    if-lt v0, v4, :cond_c

    const/16 v4, 0x5a

    if-le v0, v4, :cond_d

    :cond_c
    const/16 v4, 0x61

    if-lt v0, v4, :cond_11

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_11

    :cond_d
    move v0, v2

    :goto_2
    if-eqz v0, :cond_19

    .line 740
    iget v4, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 741
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 742
    :goto_3
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    array-length v5, v3

    if-ge v0, v5, :cond_13

    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    const/16 v5, 0x5f

    if-eq v0, v5, :cond_10

    const/16 v5, 0x41

    if-lt v0, v5, :cond_e

    const/16 v5, 0x5a

    if-le v0, v5, :cond_10

    :cond_e
    const/16 v5, 0x61

    if-lt v0, v5, :cond_f

    const/16 v5, 0x7a

    if-le v0, v5, :cond_10

    :cond_f
    const/16 v5, 0x30

    if-lt v0, v5, :cond_12

    const/16 v5, 0x39

    if-gt v0, v5, :cond_12

    :cond_10
    move v0, v2

    :goto_4
    if-eqz v0, :cond_13

    .line 743
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    goto :goto_3

    :cond_11
    move v0, v1

    .line 739
    goto :goto_2

    :cond_12
    move v0, v1

    .line 742
    goto :goto_4

    .line 745
    :cond_13
    iget-object v0, p0, Lcom/yingyonghui/downloads/n;->a:Ljava/lang/String;

    iget v1, p0, Lcom/yingyonghui/downloads/n;->c:I

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 746
    iget v1, p0, Lcom/yingyonghui/downloads/n;->c:I

    sub-int/2addr v1, v4

    const/4 v2, 0x4

    if-gt v1, v2, :cond_17

    .line 747
    const-string v1, "IS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 748
    const/4 v0, 0x7

    iput v0, p0, Lcom/yingyonghui/downloads/n;->d:I

    goto/16 :goto_1

    .line 751
    :cond_14
    const-string v1, "OR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 752
    :cond_15
    const/4 v0, 0x3

    iput v0, p0, Lcom/yingyonghui/downloads/n;->d:I

    goto/16 :goto_1

    .line 755
    :cond_16
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 756
    const/16 v0, 0x8

    iput v0, p0, Lcom/yingyonghui/downloads/n;->d:I

    goto/16 :goto_1

    .line 760
    :cond_17
    iget-object v1, p0, Lcom/yingyonghui/downloads/n;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 761
    const/4 v0, 0x4

    iput v0, p0, Lcom/yingyonghui/downloads/n;->d:I

    goto/16 :goto_1

    .line 764
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized column or keyword"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_19
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    if-ne v0, v7, :cond_1d

    .line 769
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 770
    :goto_5
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_1b

    .line 771
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v0, v3, v0

    if-ne v0, v7, :cond_1a

    .line 772
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    array-length v1, v3

    if-ge v0, v1, :cond_1b

    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    aget-char v0, v3, v0

    if-ne v0, v7, :cond_1b

    .line 773
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 778
    :cond_1a
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    goto :goto_5

    .line 780
    :cond_1b
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    array-length v1, v3

    if-ne v0, v1, :cond_1c

    .line 781
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unterminated string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :cond_1c
    iget v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yingyonghui/downloads/n;->c:I

    .line 784
    const/4 v0, 0x6

    iput v0, p0, Lcom/yingyonghui/downloads/n;->d:I

    goto/16 :goto_1

    .line 789
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yingyonghui/downloads/n;->c:I

    aget-char v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
