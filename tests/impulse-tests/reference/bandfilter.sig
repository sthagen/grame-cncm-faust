ID_0 = float(fSamplingFreq);
ID_1 = max(1.0f, ID_0);
ID_2 = min(1.92e+05f, ID_1);
ID_3 = 3.1415927f/ID_2;
ID_4 = nentry("freq [unit:Hz][style:knob]/Bandfilter",1e+03f,2e+01f,2e+04f,1.0f);
ID_5 = ID_3*ID_4;
ID_6 = tan(ID_5);
ID_7 = vslider("gain [unit:dB]/Bandfilter",0.0f,-5e+01f,5e+01f,0.1f);
ID_8 = 0.05f*ID_7;
ID_9 = 0.0f-ID_8;
ID_10 = pow(1e+01f, ID_9);
ID_11 = nentry("Q factor [style:knob]/Bandfilter",5e+01f,0.1f,1e+02f,0.1f);
ID_12 = ID_10/ID_11;
ID_13 = (ID_6+ID_12);
ID_14 = ID_6*ID_13;
ID_15 = (ID_14+1.0f);
ID_16 = 1.0f/ID_15;
ID_17 = pow(ID_6, 2.0f);
ID_18 = (ID_17+-1.0f);
ID_19 = 2.0f*ID_18;
ID_20 = (ID_6-ID_12);
ID_21 = ID_6*ID_20;
ID_22 = (ID_21+1.0f);
ID_23 = W0;
ID_24 = proj0(ID_23);
ID_25 = ID_24@2;
ID_26 = ID_22*ID_25;
ID_27 = ID_24';
ID_28 = ID_19*ID_27;
ID_29 = (ID_26+ID_28);
ID_30 = ID_16*ID_29;
ID_31 = IN[0]-ID_30;
ID_32 = letrec(W0 = (ID_31));
ID_33 = proj0(ID_32);
ID_34 = ID_33';
ID_35 = ID_19*ID_34;
ID_36 = 1.0f/ID_11;
ID_37 = (ID_6+ID_36);
ID_38 = ID_6*ID_37;
ID_39 = (ID_38+1.0f);
ID_40 = ID_33@0;
ID_41 = ID_39*ID_40;
ID_42 = ID_35+ID_41;
ID_43 = (ID_36-ID_6);
ID_44 = ID_6*ID_43;
ID_45 = (1.0f-ID_44);
ID_46 = ID_45*ID_25;
ID_47 = (ID_42+ID_46);
ID_48 = ID_16*ID_47;
SIG = (ID_48);