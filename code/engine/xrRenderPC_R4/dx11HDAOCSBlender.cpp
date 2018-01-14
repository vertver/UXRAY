#include "stdafx.h"
#include "dx11HDAOCSBlender.h"	// У HDAO блендер выделен отдельным хедером
void CBlender_CS_HDAO::Compile(CBlender_Compile& C) { // Блендер с HDAO
    IBlender::Compile(C);

    switch (C.iElement) {
    case 0:
		// Элемент компиляции HDAO 
        C.r_ComputePass("ssao_hdao"); // HDAO взаимствует у SSAO массив данных с константами //

        C.r_dx10Texture("s_position", r2_RT_P); // позицию пользователя
        C.r_dx10Texture("s_normal", r2_RT_N); // карту нормалей

        C.r_dx10Sampler("smp_nofilter"); // а также присваевает массив константы

        C.r_End();

        break;
    }
}

void CBlender_CS_HDAO_MSAA::Compile(CBlender_Compile& C) {	// Блендер с HDAO + MSAA
    IBlender::Compile(C);

    switch (C.iElement) {
    case 0:
        C.r_ComputePass("ssao_hdao_msaa"); // Тоже самое, только SSAO связан с MSAA //

        C.r_dx10Texture("s_position", r2_RT_P); 
        C.r_dx10Texture("s_normal", r2_RT_N);

        C.r_dx10Sampler("smp_nofilter");

        C.r_End();

        break;
    }
}
// Примечание: MSAA в DX10 работает в альфа режиме, поэтому стоит быть внимательным!