
DATASET ACTIVATE DataSet1.
COMPUTE R_Neu_SHIH_rate=R_Neu_SH / R_Neu_IH.
COMPUTE R_Neg_SHIH_rate=R_Neg_SH / R_Neg_IH.
COMPUTE R_Pos_SHIH_rate=R_Pos_SH / R_Pos_IH.
COMPUTE K_Neu_SHIH_rate=K_Neu_SH / K_Neu_IH.
COMPUTE K_Neg_SHIH_rate=K_Neg_SH / K_Neg_IH.
COMPUTE K_Pos_SHIH_rate=K_Pos_SH / K_Pos_IH.
EXECUTE.

/*one-way Emo anova on source accuracy

GLM Neu_Sacc Neg_Sacc Pos_Sacc
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.


/*two-way Emo*RK anova on source accuracy (source hit rate)

GLM R_Neu_SHIH_rate R_Neg_SHIH_rate R_Pos_SHIH_rate K_Neu_SHIH_rate K_Neg_SHIH_rate K_Pos_SHIH_rate
  /WSFACTOR=RK 2 Polynomial Emo 3 Polynomial 
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(RK) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=RK Emo RK*Emo.

/*one-way Emo anova on source accuracy

GLM R_Neu_SHIH_rate R_Neg_SHIH_rate R_Pos_SHIH_rate
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.

GLM K_Neu_SHIH_rate K_Neg_SHIH_rate K_Pos_SHIH_rate
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.

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


/*one-way Emo anova on Remember source hits

GLM R_Neu_SH R_Neg_SH R_Pos_SH
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.

/*one-way Emo anova on Familiar source hits

GLM K_Neu_SH K_Neg_SH K_Pos_SH
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.

/*proportion of source correct responses by R/K

DATASET ACTIVATE DataSet1.
COMPUTE R_Neu_SHper_rate=R_Neu_SH / (R_Neu_SH + K_Neu_SH).
COMPUTE R_Neg_SHper_rate=R_Neg_SH / (R_Neg_SH + K_Neg_SH).
COMPUTE R_Pos_SHper_rate=R_Pos_SH / (R_Pos_SH + K_Pos_SH).
EXECUTE.

/*one-way Emo anova on SC proportion

GLM R_Neu_SHper_rate R_Neg_SHper_rate R_Pos_SHper_rate
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.

/*Emo*RK ANOVA on Source Incorrect responses

GLM R_Neu_SIC K_Neu_SIC R_Neg_SIC K_Neg_SIC R_Pos_SIC K_Pos_SIC
  /WSFACTOR=Emo 3 Polynomial RK 2 Polynomial 
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(RK) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo RK Emo*RK.

/*Follow significant interaction by separate one-way Emo ANOVA on F and R responses

GLM R_Neu_SIC R_Neg_SIC R_Pos_SIC
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.

GLM K_Neu_SIC K_Neg_SIC K_Pos_SIC
  /WSFACTOR=Emo 3 Polynomial
  /METHOD=SSTYPE(3)
  /EMMEANS=TABLES(Emo) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE ETASQ
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Emo.



