%%Executable File for Barnard et al. (In Prep) Toxins
%Please cite as Barnard, M.A. (2020) 
%Must import 2019ErieDataForImport.csv prior to running the script 
z = 1;
% Execubtable demands
%% z = 1, June Chlorophyll a
%% z = 2, August Chlorophyll a
%% z = 3, June Microcystin
%% z = 4, August Microcystin
%% z = 5, June Anatoxin
%% z = 6, August Anatoxin

if z == 1
   %June Chl
   labl1J = ["Control";"+NO_3";"+NH_4";"+PO_4";"+N&P"]; 
   model_seriesa = [JMC JMCD]; 
   model_errora = [JMCS JMCDS];
   model_seriesb = [JSC JSCD]; 
   model_errorb = [JSCS JSCDS];
   subplot(3,2,1)
   hold on
   h1 = plot(d,Chl_J_M_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0]);   
   h2 = plot(d,Chl_J_M_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
   h3 = plot(d,Chl_J_M_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
   h4 = plot(d,Chl_J_M_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
   h5 = plot(d,Chl_J_M_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
   e1 = errorbar(d,Chl_J_M_Control,Chl_J_M_NO3_SD,'color',[0 0 0]);
   e2 = errorbar(d,Chl_J_M_NO3,Chl_J_M_NO3_SD,'color',[0.9 0.6 0]);
   e3 = errorbar(d,Chl_J_M_NH4,Chl_J_M_NH4_SD,'color',[0.35 0.7 0.9]);
   e5 = errorbar(d,Chl_J_M_PO4,Chl_J_M_PO4_SD,'color',[0 0.6 .5]);
   e6 = errorbar(d,Chl_J_M_NP,Chl_J_M_NP_SD,'color',[0.8 0.4 0]);
   title('June 2019 Maumee Bay No Dilution Chlorophyll a Production')
   xlabel('Days (a)')
   ylabel('chl a (\mug L^-^1)')
   ylim([0 200])
   hold off
   
   subplot(3,2,2)
   hold on
   h13 = plot(d,Chl_J_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0]);
   h14 = plot(d,Chl_J_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
   h15 = plot(d,Chl_J_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
   h17 = plot(d,Chl_J_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
   h18 = plot(d,Chl_J_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
   e13 = errorbar(d,Chl_J_S_Control,Chl_J_S_Control_SD,'color',[0 0 0]);
   e14 = errorbar(d,Chl_J_S_NO3,Chl_J_S_NO3_SD,'color',[0.9 0.6 0]);
   e15 = errorbar(d,Chl_J_S_NH4,Chl_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
   e16 = errorbar(d,Chl_J_S_PO4,Chl_J_S_PO4_SD,'color',[0 0.6 .5]);
   e18 = errorbar(d,Chl_J_S_NP,Chl_A_S_NP_SD,'color',[0.8 0.4 0]);
   title('June 2019 Sandusky Bay No Dilution Chlorophyll a Production')
   xlabel('Days (b)')
   ylabel('chl a (\mug L^-^1)')
   ylim([0 80])
   hold off
   
   subplot(3,2,3)
   hold on
   h7 = plot(d,Chl_J_M_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0]);
   h8 = plot(d,Chl_J_M_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
   h9 = plot(d,Chl_J_M_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
   h11 = plot(d,Chl_J_M_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
   h12 = plot(d,Chl_J_M_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
   e7 = errorbar(d,Chl_J_M_D_Control,Chl_J_M_D_Control_SD,'color',[0 0 0]);
   e8 = errorbar(d,Chl_J_M_D_NO3,Chl_J_M_D_NO3_SD,'color',[0.9 0.6 0]);
   e9 = errorbar(d,Chl_J_M_D_NH4,Chl_J_M_D_NH4_SD,'color',[0.35 0.7 0.9]);
   e11 = errorbar(d,Chl_J_M_D_PO4,Chl_J_M_D_PO4_SD,'color',[0 0.6 .5]);
   e12 = errorbar(d,Chl_J_M_D_NP,Chl_J_M_D_NP_SD,'color',[0.8 0.4 0]);
   title('June 2019 Maumee Bay 40% Dilution Chlorophyll a Production')
   xlabel('Days (c)')
   ylabel('chl a (\mug L^-^1)')
   ylim([0 200])
   
   subplot(3,2,4)
   hold on
   h19 = plot(d,Chl_J_S_D_Control,':o','color',[0 0 0],'markerfacecolor',[0 0 0]);
   h20 = plot(d,Chl_J_S_D_NO3,':x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
   h21 = plot(d,Chl_J_S_D_NH4,':+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
   h23 = plot(d,Chl_J_S_D_PO4,':d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
   h24 = plot(d,Chl_J_S_D_NP,':s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
   e19 = errorbar(d,Chl_J_S_D_Control,Chl_J_S_D_Control_SD,'color',[0 0 0]);
   e20 = errorbar(d,Chl_J_S_D_NO3,Chl_J_S_D_NO3_SD,'color',[0.9 0.6 0]);
   e21 = errorbar(d,Chl_J_S_D_NH4,Chl_J_S_D_NH4_SD,'color',[0 0.6 .5]);
   e23 = errorbar(d,Chl_J_S_D_PO4,Chl_J_S_D_PO4_SD,'color',[0 0.6 .5]);
   e24 = errorbar(d,Chl_J_S_D_NP,Chl_J_S_D_NP_SD,'color',[0.8 0.4 0]);
   title('June 2019 Sandusky Bay 40% Dilution Chlorophyll a Production')
   xlabel('Days (d)')
   ylabel('chl a (\mug L^-^1)')
   ylim([0 80])
   subplot(3,2,5)
   hold on
   hb1=bar(model_seriesa, 'grouped');
   hb1(1).FaceColor = [0.35 0.7 0.9];
   hb1(2).FaceColor = [0 0.6 .05];
   ngroups = size(model_seriesa, 1);
   nbars = size(model_seriesa, 2);
   groupwidth = min(0.8, nbars/(nbars + 1.5));
   for i = 1:nbars
       % Calculate center of each bar
       x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
       errorbar(x, model_seriesa(:,i), model_errora(:,i), 'k', 'linestyle', 'none');
   end
   title('June 2019 Maumee Bay Growth Rates')
   set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
   xlabel('Treatment (e)')
   ylabel('Normalized Growth Rate (d^-^1)')
   hold off
   
   subplot(3,2,6)
   hold on
   hb1=bar(model_seriesb, 'grouped');
   hb1(1).FaceColor = [0.35 0.7 0.9];
   hb1(2).FaceColor = [0 0.6 .05];
   ngroups = size(model_seriesb, 1);
   nbars = size(model_seriesb, 2);
   groupwidth = min(0.8, nbars/(nbars + 1.5));
   for i = 1:nbars
       % Calculate center of each bar
       x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
       errorbar(x, model_seriesb(:,i), model_errorb(:,i), 'k', 'linestyle', 'none');
   end
   title('June 2019 Sandusky Bay Growth Rates')
   set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
   xlabel('Treatment (f)')
   ylabel('Normalized Growth Rate (d^-^1)')
   hold off

elseif z == 2
    %Aug Chl
    labl1A = ["Control";"+NO_3";"+NH_4";"+Urea";"+PO_4";"+N&P"];
    model_seriesa = [AMC AMCD]; 
    model_errora = [AMCS AMCDS];
    model_seriesb = [ASC ASCD]; 
    model_errorb = [ASCS ASCDS];
    subplot(3,2,1)
    hold on
    h1 = plot(d,Chl_A_M_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h2 = plot(d,Chl_A_M_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h3 = plot(d,Chl_A_M_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h4 = plot(d,Chl_A_M_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70]);
    h5 = plot(d,Chl_A_M_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h6 = plot(d,Chl_A_M_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e1 = errorbar(d,Chl_A_M_Control,Chl_A_M_NO3_SD,'color',[0 0 0]);
    e2 = errorbar(d,Chl_A_M_NO3,Chl_A_M_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,Chl_A_M_NH4,Chl_A_M_NH4_SD,'color',[0.35 0.7 0.9]);
    e4 = errorbar(d,Chl_A_M_UREA,Chl_A_M_UREA_SD,'color',[0 0.45 0.70]);
    e5 = errorbar(d,Chl_A_M_PO4,Chl_A_M_PO4_SD,'color',[0 0.6 .5]);
    e6 = errorbar(d,Chl_A_M_NP,Chl_A_M_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Maumee Bay No Dilution Chlorophyll a Production')
    xlabel('Days (a)')
    ylabel('chl a (\mug L^-^1)')
    ylim([0 200])
    hold off
    subplot(3,2,2)
    hold on
    h13 = plot(d,Chl_J_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h14 = plot(d,Chl_J_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h15 = plot(d,Chl_J_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h17 = plot(d,Chl_J_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h18 = plot(d,Chl_J_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e13 = errorbar(d,Chl_J_S_Control,Chl_J_S_Control_SD,'color',[0 0 0]);
    e14 = errorbar(d,Chl_J_S_NO3,Chl_J_S_NO3_SD,'color',[0.9 0.6 0]);
    e15 = errorbar(d,Chl_J_S_NH4,Chl_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e16 = errorbar(d,Chl_J_S_PO4,Chl_J_S_PO4_SD,'color',[0 0.6 .5]);
    e18 = errorbar(d,Chl_J_S_NP,Chl_A_S_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay No Dilution Chlorophyll a Production')
    xlabel('Days (b)')
    ylabel('chl a (\mug L^-^1)')
    ylim([0 80])
    hold off
   
    subplot(3,2,3)
    hold on
    h7 = plot(d,Chl_J_M_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h8 = plot(d,Chl_J_M_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h9 = plot(d,Chl_J_M_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h11 = plot(d,Chl_J_M_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h12 = plot(d,Chl_J_M_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e7 = errorbar(d,Chl_J_M_D_Control,Chl_J_M_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,Chl_J_M_D_NO3,Chl_J_M_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,Chl_J_M_D_NH4,Chl_J_M_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e11 = errorbar(d,Chl_J_M_D_PO4,Chl_J_M_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,Chl_J_M_D_NP,Chl_J_M_D_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Maumee Bay 40% Dilution Chlorophyll a Production')
    xlabel('Days (c)')
    ylabel('chl a (\mug L^-^1)')
    ylim([0 200])
   
    subplot(3,2,4)
    hold on
    h19 = plot(d,Chl_J_S_D_Control,':o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h20 = plot(d,Chl_J_S_D_NO3,':x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h21 = plot(d,Chl_J_S_D_NH4,':+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h23 = plot(d,Chl_J_S_D_PO4,':d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h24 = plot(d,Chl_J_S_D_NP,':s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e19 = errorbar(d,Chl_J_S_D_Control,Chl_J_S_D_Control_SD,'color',[0 0 0]);
    e20 = errorbar(d,Chl_J_S_D_NO3,Chl_J_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e21 = errorbar(d,Chl_J_S_D_NH4,Chl_J_S_D_NH4_SD,'color',[0 0.6 .5]);
    e23 = errorbar(d,Chl_J_S_D_PO4,Chl_J_S_D_PO4_SD,'color',[0 0.6 .5]);
    e24 = errorbar(d,Chl_J_S_D_NP,Chl_J_S_D_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay 40% Dilution Chlorophyll a Production')
    xlabel('Days (d)')
    ylabel('chl a (\mug L^-^1)')
    ylim([0 80])
    subplot(3,2,5)
    hold on
    hb1=bar(model_seriesa, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriesa, 1);
    nbars = size(model_seriesa, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriesa(:,i), model_errora(:,i), 'k', 'linestyle', 'none');
    end
    title('June 2019 Maumee Bay Growth Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
    xlabel('Treatment (e)')
    ylabel('Normalized Growth Rate (d^-^1)')
    hold off
   
    subplot(3,2,6)
    hold on
    hb1=bar(model_seriesb, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriesb, 1);
    nbars = size(model_seriesb, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriesb(:,i), model_errorb(:,i), 'k', 'linestyle', 'none');
    end 
    title('June 2019 Sandusky Bay Growth Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
    xlabel('Treatment (f)')
    ylabel('Normalized Growth Rate (d^-^1)')
    hold off
elseif z == 3
    %June MC
    labl1J = ["Control";"+NO_3";"+NH_4";"+PO_4";"+N&P"];
    model_seriesc = [JM JMD]; 
    model_errorc = [JMS JMDS];
    subplot(2,2,1)
    hold on
    h1 = plot(d,MC_J_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h2 = plot(d,MC_J_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h3 = plot(d,MC_J_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h4 = plot(d,MC_J_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h5 = plot(d,MC_J_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e1 = errorbar(d,MC_J_S_Control,MC_J_S_Control_SD,'color',[0 0 0]);
    e2 = errorbar(d,MC_J_S_NO3,MC_J_S_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,MC_J_S_NH4,MC_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e4 = errorbar(d,MC_J_S_PO4,MC_J_S_PO4_SD,'color',[0 0.6 .5]);
    e5 = errorbar(d,MC_J_S_NP,MC_J_S_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay No Dilution Microcystin Production')
    xlabel('Days (a)')
    ylabel('microcystin (\mug L^-^1)')
    ylabel('anatoxin (\mug L^-^1)')
    ylim([0 200])
    hold off
   
    subplot(2,2,2)
    hold on
    h7 = plot(d,MC_J_S_D_Control,':o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h8 = plot(d,MC_J_S_D_NO3,':x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h9 = plot(d,MC_J_S_D_NH4,':+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h11 = plot(d,MC_J_S_D_PO4,':d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h12 = plot(d,MC_J_S_D_NP,':s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e7 = errorbar(d,MC_J_S_D_Control,MC_J_S_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,MC_J_S_D_NO3,MC_J_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,MC_J_S_D_NH4,MC_J_S_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e11 = errorbar(d,MC_J_S_D_PO4,MC_J_S_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,MC_J_S_D_NP,MC_J_S_D_NP_SD,'color',[0.8 0.4 0]); 
    title('June 2019 Sandusky Bay 40% Dilution Microcystin Production')
    xlabel('Days (b)')
    ylabel('microcystin (\mug L^-^1)')
    ylim([0 80])
    hold off
   
   
    subplot(2,2,3)
    hold on
    hb1=bar(model_seriesc, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriesc, 1);
    nbars = size(model_seriesc, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriesc(:,i), model_errorc(:,i), 'k', 'linestyle', 'none');
    end
    title('June 2019 Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
    xlabel('Treatment (c)')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
   
elseif z == 4
    %Aug MC
    labl1A = ["Control";"+NO_3";"+NH_4";"+Urea";"+PO_4";"+N&P"];
    model_seriesc = [AM AMD]; 
    model_errorc = [AMS AMDS];
    subplot(2,2,1)
    hold on
    h7 = plot(d,MC_J_S_Control,':o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h8 = plot(d,MC_J_S_NO3,':x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h9 = plot(d,MC_J_S_NH4,':+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h11 = plot(d,MC_J_S_PO4,':d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h12 = plot(d,MC_J_S_NP,':s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e7 = errorbar(d,MC_J_S_Control,MC_J_S_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,MC_J_S_NO3,MC_J_S_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,MC_J_S_NH4,MC_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e11 = errorbar(d,MC_J_S_PO4,MC_J_S_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,MC_J_S_NP,MC_J_S_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Maumee Bay No Dilution Microcystin Production')
    xlabel('Days (a)')
    ylabel('microcystin (\mug L^-^1)')
    ylim([0 200])
    hold off
   
    subplot(2,2,2)
    hold on
    h7 = plot(d,MC_A_M_D_Control,':o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h8 = plot(d,MC_A_M_D_NO3,':x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h9 = plot(d,MC_A_M_D_NH4,':+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h10 = plot(d,MC_A_M_D_UREA,':*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70]);
    h11 = plot(d,MC_A_M_D_PO4,':d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h12 = plot(d,MC_A_M_D_NP,':s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e7 = errorbar(d,MC_A_M_D_Control,MC_A_M_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,MC_A_M_D_NO3,MC_A_M_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,MC_A_M_D_NH4,MC_A_M_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e10 = errorbar(d,MC_A_M_D_UREA,MC_A_M_D_UREA_SD,'color',[0 0.45 0.70]);
    e11 = errorbar(d,MC_A_M_D_PO4,MC_A_M_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,MC_A_M_D_NP,MC_A_M_D_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Maumee Bay 40% Dilution Microcystin Production')
    xlabel('Days (b)')
    ylabel('microcystin (\mug L^-^1)')
    ylim([0 80])
    hold off
    
    subplot(2,2,3)
    hold on
    hb1=bar(model_seriesc, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriesc, 1);
    nbars = size(model_seriesc, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriesc(:,i), model_errorc(:,i), 'k', 'linestyle', 'none');
    end
    title('August 2019 Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1A)
    xlabel('Treatment (c)')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
      

elseif z == 5
    %June ATX
    labl1J = ["Control";"+NO_3";"+NH_4";"+PO_4";"+N&P"];
    model_seriese = [JA JAD]; 
    model_errore = [JAS JADS];
    subplot(2,2,1)
    hold on
    h1 = plot(d,ATX_J_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h2 = plot(d,ATX_J_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h3 = plot(d,ATX_J_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h5 = plot(d,ATX_J_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h6 = plot(d,ATX_J_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e1 = errorbar(d,ATX_J_S_Control,ATX_J_S_Control_SD,'color',[0 0 0]);
    e2 = errorbar(d,ATX_J_S_NO3,ATX_J_S_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,ATX_J_S_NH4,ATX_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e5 = errorbar(d,ATX_J_S_PO4,ATX_J_S_PO4_SD,'color',[0 0.6 .5]);
    e6 = errorbar(d,ATX_J_S_NP,ATX_J_S_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay No Dilution Anatoxin Production')
    xlabel('Days (a)')
    ylabel('anatoxin (\mug L^-^1)')
    ylim([0 200])
    hold off
   
    subplot(2,2,2)
    hold on
    h7 = plot(d,ATX_J_S_D_Control,':o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h8 = plot(d,ATX_J_S_D_NO3,':x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h9 = plot(d,ATX_J_S_D_NH4,':+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h11 = plot(d,ATX_J_S_D_PO4,':d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h12 = plot(d,ATX_J_S_D_NP,':s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e7 = errorbar(d,ATX_J_S_D_Control,ATX_J_S_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,ATX_J_S_D_NO3,ATX_J_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,ATX_J_S_D_NH4,ATX_J_S_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e11 = errorbar(d,ATX_J_S_D_PO4,ATX_J_S_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,ATX_J_S_D_NP,ATX_J_S_D_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay 40% Dilution Anatoxin Production')
    xlabel('Days (b)')
    ylabel('anatoxin (\mug L^-^1)')
    ylim([0 80])
    hold off
   
    subplot(2,2,3)
    hold on
    hb1=bar(model_seriese, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriese, 1);
    nbars = size(model_seriese, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriese(:,i), model_errore(:,i), 'k', 'linestyle', 'none');
    end
    title('June 2019 Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
    xlabel('Treatment (c)')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
   
elseif z == 6
    %Aug ATX
    labl1A = ["Control";"+NO_3";"+NH_4";"+Urea";"+PO_4";"+N&P"];
    model_seriese = [AA AAD]; 
    model_errore = [AAS AADS];
    subplot(2,2,1)
    hold on
    h1 = plot(d,ATX_A_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h2 = plot(d,ATX_A_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h3 = plot(d,ATX_A_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h4 = plot(d,ATX_A_S_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70]);
    h5 = plot(d,ATX_A_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h6 = plot(d,ATX_A_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e1 = errorbar(d,ATX_A_S_Control,ATX_A_S_Control_SD,'color',[0 0 0]);
    e2 = errorbar(d,ATX_A_S_NO3,ATX_A_S_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,ATX_A_S_NH4,ATX_A_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e4 = errorbar(d,ATX_A_S_UREA,ATX_A_S_UREA_SD,'color',[0 0.45 0.70]);
    e5 = errorbar(d,ATX_A_S_PO4,ATX_A_S_PO4_SD,'color',[0 0.6 .5]);
    e6 = errorbar(d,ATX_A_S_NP,ATX_A_S_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Sandusky Bay No Dilution Anatoxin Production')
    xlabel('Days (a)')
    ylabel('anatoxin (\mug L^-^1)')
    ylim([0 200])
    hold off
   
    subplot(2,2,2)
    hold on
    h7 = plot(d,ATX_A_S_D_Control,':o','color',[0 0 0],'markerfacecolor',[0 0 0]);
    h8 = plot(d,ATX_A_S_D_NO3,':x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0]);
    h9 = plot(d,ATX_A_S_D_NH4,':+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9]);
    h10 = plot(d,ATX_A_S_D_UREA,':*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70]);
    h11 = plot(d,ATX_A_S_D_PO4,':d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5]);
    h12 = plot(d,ATX_A_S_D_NP,':s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0]);
    e7 = errorbar(d,ATX_A_S_D_Control,ATX_A_S_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,ATX_A_S_D_NO3,ATX_A_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,ATX_A_S_D_NH4,ATX_A_S_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e10 = errorbar(d,ATX_A_S_D_UREA,ATX_A_S_D_UREA_SD,'color',[0 0.45 0.70]);
    e11 = errorbar(d,ATX_A_S_D_PO4,ATX_A_S_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,ATX_A_S_D_NP,ATX_A_S_D_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Sandusky Bay 40% Dilution Anatoxin Production')
    xlabel('Days (b)')
    ylabel('anatoxin (\mug L^-^1)')
    ylim([0 80])
    hold off
    
    subplot(2,2,3)
    hold on
    hb1=bar(model_seriese, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriese, 1);
    nbars = size(model_seriese, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriese(:,i), model_errore(:,i), 'k', 'linestyle', 'none');
    end
    title('August 2019 Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1A)
    xlabel('Treatment (c)')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
end
    
    
    
                    
