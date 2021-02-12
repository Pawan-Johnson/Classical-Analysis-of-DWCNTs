clc;
clear;
close all;
hold on;
tspan = [0  100];
for i=-0.1:0.01:0.1
    for j=-0.1:0.01:0.1
        z10 = i;
        z20 = j;
        z30 = 0;
        z40 = 0;
        Z0 = [z10 z20 z30 z40];
        [t,Z] = ode15s(@DEAllEnergies,tspan,Z0);

        figure(1)
        set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');
        hold on;
        grid on;
        plot(t,Z(:,1));
        xlabel('t');
        ylabel('z_1');
        title('Displacements vs Time Plot');
        xlim auto;
        ylim([-1 3]);
%         saveas(gcf,'Plot1.png')

        figure(2)
        set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');
        hold on;
        grid on;
        plot(t,Z(:,2));
        xlabel('t');
        ylabel('z_2')
        title('Displacements vs Time Plot');
        xlim auto;
        ylim([-1 3]);
%         saveas(gcf,'Plot2.png')

        figure(3)
        set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');
        hold on;
        grid on;
        plot(Z(:,1),Z(:,3));
        xlabel('z_1');
        ylabel('$\dot {z_1}$','Interpreter','latex');
        title('Phase Plot');
        xlim auto;
        ylim([-1 3]);
%         saveas(gcf,'Plot3.png')

        figure(4)
        set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');
        hold on;
        grid on;
        plot(Z(:,2),Z(:,4));
        xlabel('z_2');
        ylabel('$\dot {z_2}$','Interpreter','latex');
        title('Phase Plot');
        xlim auto;
        ylim([-1 3]);
%         saveas(gcf,'Plot4.png')
    end
end

