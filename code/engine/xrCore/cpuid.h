#ifndef _INC_CPUID
#define _INC_CPUID

enum class CpuFeature : u32 {
	MMX = 1 << 0,					// other math type
	MMXExt = 1 << 1,
	MWait = 1 << 2,
	HT = 1 << 3,

	SSE = 1 << 4,
	SSE2 = 1 << 5,
	SSE3 = 1 << 6,
	SSSE3 = 1 << 7,
	SSE41 = 1 << 8,
	SSE4a = 1 << 9,
	SSE42 = 1 << 10,
	AVX = 1 << 11,	

	AMD_3DNow = 1 << 17,
	AMD_3DNowExt = 1 << 18
};

struct processor_info {
    string32 vendor;
    string64 modelName;

    unsigned char family; // family of the processor, eg. Intel_Pentium_Pro is family 6 processor
    unsigned char
        model; // model of processor, eg. Intel_Pentium_Pro is model 1 of family 6 processor
    unsigned char stepping; // Processor revision number

    unsigned int features; // processor Feature ( same as return value).

    unsigned int n_cores;   // number of available physical cores
    unsigned int n_threads; // number of available logical threads

    unsigned int affinity_mask; // recommended affinity mask
    // all processors available to process
    // except 2nd (and upper) logical threads
    // of the same physical core

    bool hasFeature(const CpuFeature feature) const XR_NOEXCEPT {
        return (features & static_cast<u32>(feature)) != 0;
    }
};

unsigned int query_processor_info(processor_info*);

#endif
