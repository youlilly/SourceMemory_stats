
DATASET ACTIVATE DataSet1.
COMPUTE R_Neu_SHIH_rate=R_Neu_SH / R_Neu_IH.
COMPUTE R_Neg_SHIH_rate=R_Neg_SH / R_Neg_IH.
COMPUTE R_Pos_SHIH_rate=R_Pos_SH / R_Pos_IH.
COMPUTE K_Neu_SHIH_rate=K_Neu_SH / K_Neu_IH.
COMPUTE K_Neg_SHIH_rate=K_Neg_SH / K_Neg_IH.
COMPUTE K_Pos_SHIH_rate=K_Pos_SH / K_Pos_IH.
EXECUTE.


/*two-way Emo*RK anova on item hits

GLM R_Neu_IH R_Neg_IH R_Pos_IH K_Neu_IH K_Neg_IH K_Pos_IH
  /WSFACTOR=RK 2 Polynomial Emo 3 Polynomial 
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(RK) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=RK Emo RK*Emo.

/*one-way Emo anova on Remember item hits

GLM R_Neu_IH R_Neg_IH R_Pos_IH
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.

/*one-way Emo anova on Familiar item hits

GLM K_Neu_IH K_Neg_IH K_Pos_IH
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.


