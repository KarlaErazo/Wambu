using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace Wambu_Dao.ViewModelos
{
    public class VMUsuario
    {
        [JsonProperty("codigo")]
        public int Code { get; set; }

        [JsonProperty("mensaje")]
        public string Message { get; set; }

        public class ResponseIntegration<T> : VMUsuario
        {
            [JsonProperty("data")]
            public T Data { get; set; }
        }
    }
}
