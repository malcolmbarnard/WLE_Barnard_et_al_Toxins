%%Executable File for Barnard et al. (In Review) Toxins
%Please cite as Barnard, M.A. (2021) GitHub: malcolmbarnard/WLE_Barnard_et_al_Toxins www.doi.org/10.5281/zenodo.4281127
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
   d = [1,2,3,4];
   L = ["0";"1";"2";"3"];
   subplot(3,2,1)
   hold on
   h1 = plot(d,Chl_J_M_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);   
   h2 = plot(d,Chl_J_M_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
   h3 = plot(d,Chl_J_M_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
   h4 = plot(d,Chl_J_M_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
   h5 = plot(d,Chl_J_M_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
   e1 = errorbar(d,Chl_J_M_Control,Chl_J_M_NO3_SD,'color',[0 0 0]);
   e2 = errorbar(d,Chl_J_M_NO3,Chl_J_M_NO3_SD,'color',[0.9 0.6 0]);
   e3 = errorbar(d,Chl_J_M_NH4,Chl_J_M_NH4_SD,'color',[0.35 0.7 0.9]);
   e5 = errorbar(d,Chl_J_M_PO4,Chl_J_M_PO4_SD,'color',[0 0.6 .5]);
   e6 = errorbar(d,Chl_J_M_NP,Chl_J_M_NP_SD,'color',[0.8 0.4 0]);
   title('June 2019 Maumee Bay No Dilution Chlorophyll a Concentrations')
   xlabel('Day')
   set(gca,'XTick',1:4,'xticklabel',L)
   ylabel('chl a (\mug L^-^1)')
   ylim([0 200])
   hold off
   
   subplot(3,2,2)
   hold on
   h13 = plot(d,Chl_J_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
   h14 = plot(d,Chl_J_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
   h15 = plot(d,Chl_J_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
   h17 = plot(d,Chl_J_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
   h18 = plot(d,Chl_J_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
   e13 = errorbar(d,Chl_J_S_Control,Chl_J_S_Control_SD,'color',[0 0 0]);
   e14 = errorbar(d,Chl_J_S_NO3,Chl_J_S_NO3_SD,'color',[0.9 0.6 0]);
   e15 = errorbar(d,Chl_J_S_NH4,Chl_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
   e16 = errorbar(d,Chl_J_S_PO4,Chl_J_S_PO4_SD,'color',[0 0.6 .5]);
   e18 = errorbar(d,Chl_J_S_NP,Chl_A_S_NP_SD,'color',[0.8 0.4 0]);
   title('June 2019 Sandusky Bay No Dilution Chlorophyll a Concentrations')
   xlabel('Day')
   set(gca,'XTick',1:4,'xticklabel',L)
   ylabel('chl a (\mug L^-^1)')
   ylim([0 80])
   hold off
   
   subplot(3,2,3)
   hold on
   h7 = plot(d,Chl_J_M_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
   h8 = plot(d,Chl_J_M_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
   h9 = plot(d,Chl_J_M_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
   h11 = plot(d,Chl_J_M_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
   h12 = plot(d,Chl_J_M_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
   e7 = errorbar(d,Chl_J_M_D_Control,Chl_J_M_D_Control_SD,'color',[0 0 0]);
   e8 = errorbar(d,Chl_J_M_D_NO3,Chl_J_M_D_NO3_SD,'color',[0.9 0.6 0]);
   e9 = errorbar(d,Chl_J_M_D_NH4,Chl_J_M_D_NH4_SD,'color',[0.35 0.7 0.9]);
   e11 = errorbar(d,Chl_J_M_D_PO4,Chl_J_M_D_PO4_SD,'color',[0 0.6 .5]);
   e12 = errorbar(d,Chl_J_M_D_NP,Chl_J_M_D_NP_SD,'color',[0.8 0.4 0]);
   title('June 2019 Maumee Bay 40% Dilution Chlorophyll a Concentrations')
   xlabel('Day')
   set(gca,'XTick',1:4,'xticklabel',L)
   ylabel('chl a (\mug L^-^1)')
   ylim([0 200])
   
   subplot(3,2,4)
   hold on
   h19 = plot(d,Chl_J_S_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
   h20 = plot(d,Chl_J_S_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
   h21 = plot(d,Chl_J_S_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
   h23 = plot(d,Chl_J_S_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
   h24 = plot(d,Chl_J_S_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
   e19 = errorbar(d,Chl_J_S_D_Control,Chl_J_S_D_Control_SD,'color',[0 0 0]);
   e20 = errorbar(d,Chl_J_S_D_NO3,Chl_J_S_D_NO3_SD,'color',[0.9 0.6 0]);
   e21 = errorbar(d,Chl_J_S_D_NH4,Chl_J_S_D_NH4_SD,'color',[0 0.6 .5]);
   e23 = errorbar(d,Chl_J_S_D_PO4,Chl_J_S_D_PO4_SD,'color',[0 0.6 .5]);
   e24 = errorbar(d,Chl_J_S_D_NP,Chl_J_S_D_NP_SD,'color',[0.8 0.4 0]);
   title('June 2019 Sandusky Bay 40% Dilution Chlorophyll a Concentrations')
   xlabel('Day')
   set(gca,'XTick',1:4,'xticklabel',L)
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
   xlabel('Treatment')
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
   xlabel('Treatment')
   ylabel('Normalized Growth Rate (d^-^1)')
   hold off

elseif z == 2
    %Aug Chl
    labl1A = ["Control";"+NO_3";"+NH_4";"+Urea";"+PO_4";"+N&P"];
    model_seriesa = [AMC AMCD]; 
    model_errora = [AMCS AMCDS];
    model_seriesb = [ASC ASCD]; 
    model_errorb = [ASCS ASDCS];
    d = [1,2,3,4];
    L = ["0";"1";"2";"3"];
    subplot(3,2,1)
    hold on
    h1 = plot(d,Chl_A_M_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h2 = plot(d,Chl_A_M_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h3 = plot(d,Chl_A_M_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h4 = plot(d,Chl_A_M_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h5 = plot(d,Chl_A_M_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h6 = plot(d,Chl_A_M_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e1 = errorbar(d,Chl_A_M_Control,Chl_A_M_NO3_SD,'color',[0 0 0]);
    e2 = errorbar(d,Chl_A_M_NO3,Chl_A_M_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,Chl_A_M_NH4,Chl_A_M_NH4_SD,'color',[0.35 0.7 0.9]);
    e4 = errorbar(d,Chl_A_M_UREA,Chl_A_M_UREA_SD,'color',[0 0.45 0.70]);
    e5 = errorbar(d,Chl_A_M_PO4,Chl_A_M_PO4_SD,'color',[0 0.6 .5]);
    e6 = errorbar(d,Chl_A_M_NP,Chl_A_M_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Maumee Bay No Dilution Chlorophyll a Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('chl a (\mug L^-^1)')
    ylim([0 500])
    hold off
    subplot(3,2,2)
    hold on
    h13 = plot(d,Chl_A_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h14 = plot(d,Chl_A_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h15 = plot(d,Chl_A_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h16 = plot(d,Chl_A_S_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h17 = plot(d,Chl_A_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h18 = plot(d,Chl_A_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e13 = errorbar(d,Chl_A_S_Control,Chl_A_S_Control_SD,'color',[0 0 0]);
    e14 = errorbar(d,Chl_A_S_NO3,Chl_A_S_NO3_SD,'color',[0.9 0.6 0]);
    e15 = errorbar(d,Chl_A_S_NH4,Chl_A_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e16 = errorbar(d,Chl_A_S_UREA,Chl_A_S_UREA_SD,'color',[0 0.45 0.70]);
    e17 = errorbar(d,Chl_A_S_PO4,Chl_A_S_PO4_SD,'color',[0 0.6 .5]);
    e18 = errorbar(d,Chl_A_S_NP,Chl_A_S_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Sandusky Bay No Dilution Chlorophyll a Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('chl a (\mug L^-^1)')
    ylim([0 200])
    hold off
   
    subplot(3,2,3)
    hold on
    h7 = plot(d,Chl_A_M_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,Chl_A_M_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,Chl_A_M_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h10 = plot(d,Chl_A_M_D_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,Chl_A_M_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,Chl_A_M_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,Chl_A_M_D_Control,Chl_A_M_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,Chl_A_M_D_NO3,Chl_A_M_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,Chl_A_M_D_NH4,Chl_A_M_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e10 = errorbar(d,Chl_A_M_D_UREA,Chl_A_M_D_UREA_SD,'color',[0 0.45 0.70]);
    e11 = errorbar(d,Chl_A_M_D_PO4,Chl_A_M_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,Chl_A_M_D_NP,Chl_A_M_D_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Maumee Bay 40% Dilution Chlorophyll a Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('chl a (\mug L^-^1)')
    ylim([0 500])
   
    subplot(3,2,4)
    hold on
    h19 = plot(d,Chl_A_S_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h20 = plot(d,Chl_A_S_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h21 = plot(d,Chl_A_S_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h22 = plot(d,Chl_A_S_D_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h23 = plot(d,Chl_A_S_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h24 = plot(d,Chl_A_S_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e19 = errorbar(d,Chl_A_S_D_Control,Chl_A_S_D_Control_SD,'color',[0 0 0]);
    e20 = errorbar(d,Chl_A_S_D_NO3,Chl_A_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e21 = errorbar(d,Chl_A_S_D_NH4,Chl_A_S_D_NH4_SD,'color',[0 0.6 .5]);
    e22 = errorbar(d,Chl_A_S_D_UREA,Chl_A_S_D_UREA_SD,'color',[0 0.45 0.70]);
    e23 = errorbar(d,Chl_A_S_D_PO4,Chl_A_S_D_PO4_SD,'color',[0 0.6 .5]);
    e24 = errorbar(d,Chl_A_S_D_NP,Chl_A_S_D_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Sandusky Bay 40% Dilution Chlorophyll a Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('chl a (\mug L^-^1)')
    ylim([0 200])
    
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
    title('August 2019 Maumee Bay Growth Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1A)
    xlabel('Treatment')
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
    title('August 2019 Sandusky Bay Growth Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1A)
    xlabel('Treatment')
    ylabel('Normalized Growth Rate (d^-^1)')
    hold off

elseif z == 3
    %June MC
    labl1J = ["Control";"+NO_3";"+NH_4";"+PO_4";"+N&P"];
    model_seriesc = [JM JMD]; 
    model_errorc = [JMS JMDS];
    model_seriesd = [JCM JCMD]; 
    model_errord = [JCMS JCMDS];
    d = [1,2,3,4];
    L = ["0";"1";"2";"3"];
    subplot(3,2,1)
    hold on
    h1 = plot(d,MC_J_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h2 = plot(d,MC_J_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h3 = plot(d,MC_J_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h4 = plot(d,MC_J_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h5 = plot(d,MC_J_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e1 = errorbar(d,MC_J_S_Control,MC_J_S_Control_SD,'color',[0 0 0]);
    e2 = errorbar(d,MC_J_S_NO3,MC_J_S_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,MC_J_S_NH4,MC_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e4 = errorbar(d,MC_J_S_PO4,MC_J_S_PO4_SD,'color',[0 0.6 .5]);
    e5 = errorbar(d,MC_J_S_NP,MC_J_S_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay No Dilution Microcystin Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('microcystin (\mug L^-^1)')
    ylim([0 0.4])
    hold off
   
    subplot(3,2,2)
    hold on
    h1 = plot(d,MCC_J_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h2 = plot(d,MCC_J_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h3 = plot(d,MCC_J_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h4 = plot(d,MCC_J_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h5 = plot(d,MCC_J_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e1 = errorbar(d,MCC_J_S_Control,MCC_J_S_Control_SD,'color',[0 0 0]);
    e2 = errorbar(d,MCC_J_S_NO3,MCC_J_S_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,MCC_J_S_NH4,MCC_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e4 = errorbar(d,MCC_J_S_PO4,MCC_J_S_PO4_SD,'color',[0 0.6 .5]);
    e5 = errorbar(d,MCC_J_S_NP,MCC_J_S_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay No Dilution Microcystin:Chl a Ratios')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('Microcystin:Chl a Ratio (\mug microcystin \mug chl a^-^1)')
    ylim([-0.2 0.2])
    hold off
  
    subplot(3,2,3)
    hold on
    h7 = plot(d,MC_J_S_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,MC_J_S_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,MC_J_S_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,MC_J_S_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,MC_J_S_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,MC_J_S_D_Control,MC_J_S_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,MC_J_S_D_NO3,MC_J_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,MC_J_S_D_NH4,MC_J_S_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e11 = errorbar(d,MC_J_S_D_PO4,MC_J_S_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,MC_J_S_D_NP,MC_J_S_D_NP_SD,'color',[0.8 0.4 0]); 
    title('June 2019 Sandusky Bay 40% Dilution Microcystin Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('microcystin (\mug L^-^1)')
    ylim([0 0.4])
    hold off
   
    subplot(3,2,4)
    hold on
    h7 = plot(d,MCC_J_S_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,MCC_J_S_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,MCC_J_S_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,MCC_J_S_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,MCC_J_S_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,MCC_J_S_D_Control,MCC_J_S_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,MCC_J_S_D_NO3,MCC_J_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,MCC_J_S_D_NH4,MCC_J_S_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e11 = errorbar(d,MCC_J_S_D_PO4,MCC_J_S_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,MCC_J_S_D_NP,MCC_J_S_D_NP_SD,'color',[0.8 0.4 0]); 
    title('June 2019 Sandusky Bay 40% Dilution Microcystin:Chl a Ratios')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('Microcystin:Chl a Ratio (\mug microcystin \mug chl a^-^1)')
    ylim([-0.2 0.2])
    hold off
    
    subplot(3,2,5)
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
    title('June 2019 Microcystin Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
    xlabel('Treatment')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
    
    subplot(3,2,6)
    hold on
    hb1=bar(model_seriesd, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriesd, 1);
    nbars = size(model_seriesd, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriesd(:,i), model_errord(:,i), 'k', 'linestyle', 'none');
    end
    title('June 2019 Biomass-Normalized Microcystin Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
    xlabel('Treatment')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
   
elseif z == 4
    %Aug MC
    labl1A = ["Control";"+NO_3";"+NH_4";"+Urea";"+PO_4";"+N&P"];
    model_seriesc = [AM AMD]; 
    model_errorc = [AMS AMDS];
    model_seriesd = [ACM ACMD]; 
    model_errord = [ACMS ACMDS];
    d = [1,2,3,4];
    L = ["0";"1";"2";"3"];
    subplot(3,2,1)
    hold on
    h7 = plot(d,MC_A_M_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,MC_A_M_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,MC_A_M_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h10 = plot(d,MC_A_M_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,MC_A_M_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,MC_A_M_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,MC_A_M_Control,MC_A_M_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,MC_A_M_NO3,MC_A_M_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,MC_A_M_NH4,MC_A_M_NH4_SD,'color',[0.35 0.7 0.9]);
    e10 = errorbar(d,MC_A_M_UREA,MC_A_M_D_UREA_SD,'color',[0 0.45 0.70]);
    e11 = errorbar(d,MC_A_M_PO4,MC_A_M_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,MC_A_M_NP,MC_A_M_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Maumee Bay No Dilution Microcystin Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('microcystin (\mug L^-^1)')
    ylim([0 20])
    hold off
   
    subplot(3,2,2)
    hold on
    h7 = plot(d,MCC_A_M_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,MCC_A_M_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,MCC_A_M_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h10 = plot(d,MCC_A_M_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,MCC_A_M_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,MCC_A_M_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,MCC_A_M_Control,MCC_A_M_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,MCC_A_M_NO3,MCC_A_M_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,MCC_A_M_NH4,MCC_A_M_NH4_SD,'color',[0.35 0.7 0.9]);
    e10 = errorbar(d,MCC_A_M_UREA,MCC_A_M_D_UREA_SD,'color',[0 0.45 0.70]);
    e11 = errorbar(d,MCC_A_M_PO4,MCC_A_M_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,MCC_A_M_NP,MCC_A_M_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Maumee Bay No Dilution Microcystin:Chl a Ratios')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('Microcystin:Chl a Ratio (\mug microcystin \mug chl a^-^1)')
    ylim([-1.5 1.5])
    hold off
    
    subplot(3,2,3)
    hold on
    h7 = plot(d,MC_A_M_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,MC_A_M_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,MC_A_M_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h10 = plot(d,MC_A_M_D_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,MC_A_M_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,MC_A_M_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,MC_A_M_D_Control,MC_A_M_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,MC_A_M_D_NO3,MC_A_M_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,MC_A_M_D_NH4,MC_A_M_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e10 = errorbar(d,MC_A_M_D_UREA,MC_A_M_D_UREA_SD,'color',[0 0.45 0.70]);
    e11 = errorbar(d,MC_A_M_D_PO4,MC_A_M_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,MC_A_M_D_NP,MC_A_M_D_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Maumee Bay 40% Dilution Microcystin Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('microcystin (\mug L^-^1)')
    ylim([0 20])
    hold off
    
    subplot(3,2,4)
    hold on
    h7 = plot(d,MCC_A_M_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,MCC_A_M_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,MCC_A_M_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h10 = plot(d,MCC_A_M_D_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,MCC_A_M_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,MCC_A_M_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,MCC_A_M_D_Control,MCC_A_M_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,MCC_A_M_D_NO3,MCC_A_M_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,MCC_A_M_D_NH4,MCC_A_M_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e10 = errorbar(d,MCC_A_M_D_UREA,MCC_A_M_D_UREA_SD,'color',[0 0.45 0.70]);
    e11 = errorbar(d,MCC_A_M_D_PO4,MCC_A_M_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,MCC_A_M_D_NP,MCC_A_M_D_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Maumee Bay 40% Microcystin:Chl a Ratios')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('Microcystin:Chl a Ratio (\mug microcystin \mug chl a^-^1)')
    ylim([-1.5 1.5])
    hold off
    
    subplot(3,2,5)
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
    title('August 2019 Microcystin Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1A)
    xlabel('Treatment')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
      
subplot(3,2,6)
    hold on
    hb1=bar(model_seriesd, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriesd, 1);
    nbars = size(model_seriesd, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriesd(:,i), model_errord(:,i), 'k', 'linestyle', 'none');
    end
    title('August 2019 Biomass-Normalized Microcystin Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1A)
    xlabel('Treatment')
    ylabel('Normalized Production Rate (d^-^1)')
    ylim([-1.7 1.5])
    hold off
   
elseif z == 5
    %June ATX
    labl1J = ["Control";"+NO_3";"+NH_4";"+PO_4";"+N&P"];
    model_seriese = [JA JAD]; 
    model_errore = [JAS JADS];
    model_seriesf = [JCA JCAD]; 
    model_errorf = [JCAS JCADS];
    d = [1,2,3,4];
    L = ["0";"1";"2";"3"];
    subplot(3,2,1)
    hold on
    h1 = plot(d,ATX_J_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h2 = plot(d,ATX_J_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h3 = plot(d,ATX_J_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h5 = plot(d,ATX_J_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h6 = plot(d,ATX_J_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e1 = errorbar(d,ATX_J_S_Control,ATX_J_S_Control_SD,'color',[0 0 0]);
    e2 = errorbar(d,ATX_J_S_NO3,ATX_J_S_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,ATX_J_S_NH4,ATX_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e5 = errorbar(d,ATX_J_S_PO4,ATX_J_S_PO4_SD,'color',[0 0.6 .5]);
    e6 = errorbar(d,ATX_J_S_NP,ATX_J_S_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay No Dilution Anatoxin Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('anatoxin (\mug L^-^1)')
    ylim([0 0.7])
    hold off
   
    subplot(3,2,2)
    hold on
    h1 = plot(d,ATXC_J_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h2 = plot(d,ATXC_J_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h3 = plot(d,ATXC_J_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h5 = plot(d,ATXC_J_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h6 = plot(d,ATXC_J_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e1 = errorbar(d,ATXC_J_S_Control,ATXC_J_S_Control_SD,'color',[0 0 0]);
    e2 = errorbar(d,ATXC_J_S_NO3,ATXC_J_S_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,ATXC_J_S_NH4,ATXC_J_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e5 = errorbar(d,ATXC_J_S_PO4,ATXC_J_S_PO4_SD,'color',[0 0.6 .5]);
    e6 = errorbar(d,ATXC_J_S_NP,ATXC_J_S_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay No Dilution Anatoxin:Chl a Ratios')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('Anatoxin:Chl a Ratio (\mug anatoxin \mug chl a^-^1)')
    ylim([-0.1 0.15])
    hold off
    
    subplot(3,2,3)
    hold on
    h7 = plot(d,ATX_J_S_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,ATX_J_S_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,ATX_J_S_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,ATX_J_S_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,ATX_J_S_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,ATX_J_S_D_Control,ATX_J_S_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,ATX_J_S_D_NO3,ATX_J_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,ATX_J_S_D_NH4,ATX_J_S_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e11 = errorbar(d,ATX_J_S_D_PO4,ATX_J_S_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,ATX_J_S_D_NP,ATX_J_S_D_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay 40% Dilution Anatoxin Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('anatoxin (\mug L^-^1)')
    ylim([0 0.7]) 
    hold off
   
    subplot(3,2,4)
    hold on
    h7 = plot(d,ATXC_J_S_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,ATXC_J_S_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,ATXC_J_S_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,ATXC_J_S_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,ATXC_J_S_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,ATXC_J_S_D_Control,ATXC_J_S_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,ATXC_J_S_D_NO3,ATXC_J_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,ATXC_J_S_D_NH4,ATXC_J_S_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e11 = errorbar(d,ATXC_J_S_D_PO4,ATXC_J_S_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,ATXC_J_S_D_NP,ATXC_J_S_D_NP_SD,'color',[0.8 0.4 0]);
    title('June 2019 Sandusky Bay 40% Dilution Anatoxin:Chl a Ratios')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('Anatoxin:Chl a Ratio (\mug anatoxin \mug chl a^-^1)')
    ylim([-0.1 0.15])
    hold off
    
    subplot(3,2,5)
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
    title('June 2019 Anatoxin Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
    xlabel('Treatment')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
   
    subplot(3,2,6)
    hold on
    hb1=bar(model_seriesf, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriesf, 1);
    nbars = size(model_seriesf, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriesf(:,i), model_errorf(:,i), 'k', 'linestyle', 'none');
    end
    title('June 2019 Biomass-Normalized Anatoxin Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1J)
    xlabel('Treatment')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
    
elseif z == 6
    %Aug ATX
    labl1A = ["Control";"+NO_3";"+NH_4";"+Urea";"+PO_4";"+N&P"];
    model_seriese = [AA AAD]; 
    model_errore = [AAS AADS];
    model_seriesf = [ACA ACAD]; 
    model_errorf = [ACAS ACADS];
    d = [1,2,3,4];
    L = ["0";"1";"2";"3"];
    subplot(3,2,1)
    hold on
    h1 = plot(d,ATX_A_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h2 = plot(d,ATX_A_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h3 = plot(d,ATX_A_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h4 = plot(d,ATX_A_S_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h5 = plot(d,ATX_A_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h6 = plot(d,ATX_A_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e1 = errorbar(d,ATX_A_S_Control,ATX_A_S_Control_SD,'color',[0 0 0]);
    e2 = errorbar(d,ATX_A_S_NO3,ATX_A_S_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,ATX_A_S_NH4,ATX_A_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e4 = errorbar(d,ATX_A_S_UREA,ATX_A_S_UREA_SD,'color',[0 0.45 0.70]);
    e5 = errorbar(d,ATX_A_S_PO4,ATX_A_S_PO4_SD,'color',[0 0.6 .5]);
    e6 = errorbar(d,ATX_A_S_NP,ATX_A_S_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Sandusky Bay No Dilution Anatoxin Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('anatoxin (\mug L^-^1)')
    ylim([0 9])
    hold off
   
    subplot(3,2,2)
    hold on
    h1 = plot(d,ATXC_A_S_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h2 = plot(d,ATXC_A_S_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h3 = plot(d,ATXC_A_S_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h4 = plot(d,ATXC_A_S_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h5 = plot(d,ATXC_A_S_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h6 = plot(d,ATXC_A_S_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e1 = errorbar(d,ATXC_A_S_Control,ATXC_A_S_Control_SD,'color',[0 0 0]);
    e2 = errorbar(d,ATXC_A_S_NO3,ATXC_A_S_NO3_SD,'color',[0.9 0.6 0]);
    e3 = errorbar(d,ATXC_A_S_NH4,ATXC_A_S_NH4_SD,'color',[0.35 0.7 0.9]);
    e4 = errorbar(d,ATXC_A_S_UREA,ATXC_A_S_UREA_SD,'color',[0 0.45 0.70]);
    e5 = errorbar(d,ATXC_A_S_PO4,ATXC_A_S_PO4_SD,'color',[0 0.6 .5]);
    e6 = errorbar(d,ATXC_A_S_NP,ATXC_A_S_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Sandusky Bay No Dilution Anatoxin:Chl a Ratios')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('Anatoxin:Chl a Ratio (\mug anatoxin \mug chl a^-^1)')
    ylim([-0.4 0.4])
    hold off
    
    subplot(3,2,3)
    hold on
    h7 = plot(d,ATX_A_S_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,ATX_A_S_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,ATX_A_S_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h10 = plot(d,ATX_A_S_D_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,ATX_A_S_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,ATX_A_S_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,ATX_A_S_D_Control,ATX_A_S_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,ATX_A_S_D_NO3,ATX_A_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,ATX_A_S_D_NH4,ATX_A_S_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e10 = errorbar(d,ATX_A_S_D_UREA,ATX_A_S_D_UREA_SD,'color',[0 0.45 0.70]);
    e11 = errorbar(d,ATX_A_S_D_PO4,ATX_A_S_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,ATX_A_S_D_NP,ATX_A_S_D_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Sandusky Bay 40% Dilution Anatoxin Concentrations')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('anatoxin (\mug L^-^1)')
    ylim([0 9])
    hold off
    
    subplot(3,2,4)
    hold on
    h7 = plot(d,ATXC_A_S_D_Control,'-o','color',[0 0 0],'markerfacecolor',[0 0 0],'LineWidth',2,'MarkerSize',5);
    h8 = plot(d,ATXC_A_S_D_NO3,'-x','color',[0.9 0.6 0],'markerfacecolor',[0.9 0.6 0],'LineWidth',2,'MarkerSize',5);
    h9 = plot(d,ATXC_A_S_D_NH4,'-+','color',[0.35 0.7 0.9],'markerfacecolor',[0.35 0.7 0.9],'LineWidth',2,'MarkerSize',5);
    h10 = plot(d,ATXC_A_S_D_UREA,'-*','color',[0 0.45 0.70],'markerfacecolor',[0 0.45 0.70],'LineWidth',2,'MarkerSize',5);
    h11 = plot(d,ATXC_A_S_D_PO4,'-d','color',[0 0.6 .5],'markerfacecolor',[0 0.6 .5],'LineWidth',2,'MarkerSize',5);
    h12 = plot(d,ATXC_A_S_D_NP,'-s','color',[0.8 0.4 0],'markerfacecolor',[0.8 0.4 0],'LineWidth',2,'MarkerSize',5);
    e7 = errorbar(d,ATXC_A_S_D_Control,ATXC_A_S_D_Control_SD,'color',[0 0 0]);
    e8 = errorbar(d,ATXC_A_S_D_NO3,ATXC_A_S_D_NO3_SD,'color',[0.9 0.6 0]);
    e9 = errorbar(d,ATXC_A_S_D_NH4,ATXC_A_S_D_NH4_SD,'color',[0.35 0.7 0.9]);
    e10 = errorbar(d,ATXC_A_S_D_UREA,ATXC_A_S_D_UREA_SD,'color',[0 0.45 0.70]);
    e11 = errorbar(d,ATXC_A_S_D_PO4,ATXC_A_S_D_PO4_SD,'color',[0 0.6 .5]);
    e12 = errorbar(d,ATXC_A_S_D_NP,ATXC_A_S_D_NP_SD,'color',[0.8 0.4 0]);
    title('August 2019 Sandusky Bay 40% Dilution Anatoxin:Chl a Ratios')
    xlabel('Day')
    set(gca,'XTick',1:4,'xticklabel',L)
    ylabel('Anatoxin:Chl a Ratio (\mug anatoxin \mug chl a^-^1)')
    ylim([-0.4 0.4])
    hold off
    
    subplot(3,2,5)
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
    title('August 2019 Anatoxin Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1A)
    xlabel('Treatment')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
    
    subplot(3,2,6)
    hold on
    hb1=bar(model_seriesf, 'grouped');
    hb1(1).FaceColor = [0.35 0.7 0.9];
    hb1(2).FaceColor = [0 0.6 .05];
    ngroups = size(model_seriesf, 1);
    nbars = size(model_seriesf, 2);
    groupwidth = min(0.8, nbars/(nbars + 1.5));
    for i = 1:nbars
        % Calculate center of each bar
        x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
        errorbar(x, model_seriesf(:,i), model_errorf(:,i), 'k', 'linestyle', 'none');
    end
    title('August 2019 Biomass-Normalized Anatoxin Production Rates')
    set(gca,'XTick',1:ngroups,'xticklabel',labl1A)
    xlabel('Treatment')
    ylabel('Normalized Production Rate (d^-^1)')
    hold off
end 
    
    
    
                    
