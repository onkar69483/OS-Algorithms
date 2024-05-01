#include<bits/stdc++.h>
using namespace std;

void Calculate();
void something();

int allocation[10][10], need[10][10], Max[10][10], available[10], current[10];
int p, m;
bool executed[10], come;

int main (){
    int keepon = 1;
    cout << "Enter No. of processes: ";
    cin >> p;
    cout << "\nEnter No. of resources: ";
    cin >> m;
    cout << "\n";

    cout << "Enter the available resources: ";
    for (int i = 0; i < m; ++i)
        cin >> current[i];

    for (int i = 0; i < p; ++i) {
        cout << "\n\n\t\t\tProcess P" << i  << " Details\n";
        cout << "Enter Allocation : ";
        for (int j = 0; j < m; ++j)
            cin >> allocation[i][j];
        cout << "Enter Max :";
        for (int j = 0; j < m; ++j) {
            cin >> Max[i][j];
            need[i][j] = Max[i][j] - allocation[i][j];
        }
    }

    cout << "\n\n\t\t\tTable for Bankers Algo\n\n";
    cout << "Initial Resources: ";
    for (int i = 0; i < m; ++i)
        cout << current[i] << " ";
    cout << "\n\n";
    cout << "Process    Max    Allocation    Need\n";
    for (int i = 0; i < p; ++i) {
        cout << "  P" << i << "    ";
        cout << "  ";
        for (int j = 0; j < m; ++j)
            cout << Max[i][j] << " ";
        cout << "     ";
        for (int j = 0; j < m; ++j)
            cout << allocation[i][j] << " ";
        cout << "     ";
        for (int j = 0; j < m; ++j)
            cout << need[i][j] << " ";
        cout << "\n";
    }
    cout << "\n\n";
    Calculate();
    return 0;
}

void Calculate(){
    something();
    vector<int> safeSequence;
    int work[10], finish[10];
    for (int i = 0; i < m; ++i)
        work[i] = current[i];
    for (int i = 0; i < p; ++i)
        finish[i] = 0;

    int count = 0;
    while (count < p) {
        bool found = false;
        for (int i = 0; i < p; ++i) {
            if (finish[i] == 0) {
                bool canExecute = true;
                for (int j = 0; j < m; ++j) {
                    if (need[i][j] > work[j]) {
                        canExecute = false;
                        break;
                    }
                }
                if (canExecute) {
                    for (int j = 0; j < m; ++j)
                        work[j] += allocation[i][j];
                    safeSequence.push_back(i);
                    finish[i] = 1;
                    found = true;
                    count++;
                }
            }
        }
        if (!found)
            break;
    }

    if (safeSequence.size() == p) {
        cout << "\nSafe Sequence: ";
        for (int i = 0; i < p; ++i) {
            cout << "P" << safeSequence[i];
            if (i != p - 1)
                cout << " -> ";
        }
        cout << "\n";
    } else {
        cout << "\n\t\t\tDeadlock\n\n";
    }
}

void something(){
    come = false;
    for (int i = 0; i < 10; ++i)
        executed[i] = false;
}