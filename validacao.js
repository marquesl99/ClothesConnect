function validarDoacao() {
  // Get form fields
  const tipoDoacao = document.getElementById("tipo-doacao");
  const tamanhoDoacao = document.getElementById("tamanho-doacao");
  const estadoConservacao = document.getElementById("estado-conservacao");
  const descricaoDoacao = document.getElementById("descricao-doacao");

  // Validate tipo doacao
  if (tipoDoacao.value === "Selecione") {
    alert("Por favor, selecione o tipo de roupa.");
    tipoDoacao.focus();
    return false;
  }

  // Validate tamanho doacao
  if (tamanhoDoacao.value === "Selecione") {
    alert("Por favor, selecione o tamanho da roupa.");
    tamanhoDoacao.focus();
    return false;
  }

  // Validate estado conservacao
  if (estadoConservacao.value === "Selecione") {
    alert("Por favor, selecione o estado de conservação da roupa.");
    estadoConservacao.focus();
    return false;
  }

  // Validate descricao doacao
  if (descricaoDoacao.value === "") {
    alert("Preencha com seu endereço.");
    descricaoDoacao.focus();
    return false;
  }

  // If all validations pass, submit the form
  return true;
}
