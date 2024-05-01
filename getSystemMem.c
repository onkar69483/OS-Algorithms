#include <stdio.h>
#include <unistd.h>

unsigned long long getTotalSystemMemory() {
    long pages = sysconf(_SC_PHYS_PAGES);
    long page_size = sysconf(_SC_PAGE_SIZE);
    unsigned long long total_memory_bytes = pages * page_size;
    // we get total byte using number of pages and page size,
    // then convert it into mb
    return total_memory_bytes / (1024 * 1024);
}

unsigned long long getUsedMemory() {
    // we can get info from meminfo file
    FILE *meminfo = fopen("/proc/meminfo", "r");
    if (meminfo == NULL) {
        perror("Error opening file");
        return 0;
    }

    char line[128];
    unsigned long long free_memory_kb = 0;

    while (fgets(line, sizeof(line), meminfo)) {
        if (sscanf(line, "MemAvailable: %llu kB", &free_memory_kb) == 1) {
            break;
        }
    }

    fclose(meminfo);

    return free_memory_kb / 1024;
}

int main() {
    unsigned long long totalmem, usedmem, availmem;
    totalmem = getTotalSystemMemory();
    usedmem = getUsedMemory();
    availmem = totalmem - usedmem;
    printf("\nGetting Total System Memory and Available Memory!!!\n");
    printf("Total System Memory: %llu MB\n", totalmem);
    printf("Available Memory: %llu MB\n", availmem);
    return 0;
}