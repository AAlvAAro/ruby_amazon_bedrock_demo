MODEL_PROVIDERS = [
  {
    name: 'AI21 Labs',
    description: "Businesses use AI21's Jurassic family of leading LLMs to build generative AI-driven applications and services leveraging existing organizational data. Jurassic supports cross-industry use cases including long and short-form text generation, contextual question answering, summarization, and classification. Designed to follow natural language instructions, Jurassic is trained on a massive corpus of web text and supports six languages in addition to English",
    models: [
      {
        name: 'Jurassic-2 Ultra',
        description: 'Supports: Open book question answering, summarization, draft generation, information extraction, ideation.',
        documentation_url: 'https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters-jurassic2.html',
        bedrock_model_id: 'ai21.j2-ultra-v1'
      },
      {
        name: 'Jurassic-2 Mid',
        description: 'Supports: Open book question answering, summarization, draft generation, information extraction, ideation.',
        documentation_url: 'https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters-jurassic2.html',
        bedrock_model_id: 'ai21.j2-mid-v1'
      }
    ]
  },
  {
    name: 'Amazon Titan',
    description: 'Amazon Titan Foundation Models are pre-trained on large datasets, making them powerful, general-purpose models. Use them as is, or customize them by fine tuning the models with your own data for a particular task without annotating large volumes of data.',
    models: [
      {
        name: 'Titan Text G1 - Lite',
        description: 'Supports: Text generation, Code generation, Rich text formatting, Orchestration (Agents), Fine Tuning.',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=amazon.titan-text-lite-v1',
        bedrock_model_id: 'amazon.titan-text-lite-v1'
      },
      {
        name: 'Titan Text G1 - Express',
        description: 'Supports: Text generation, Code generation, Rich text formatting, Orchestration (Agents), Fine Tuning.',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=amazon.titan-text-express-v1',
        bedrock_model_id: 'ai21.j2-mid-v1'
      }
    ]
  },
  {
    name: 'Anthropic',
    description: 'Anthropic offers the Claude family of large language models purpose built for conversations, summarization, Q&A, workflow automation, coding and more. Early customers report that Claude is much less likely to produce harmful outputs, easier to converse with, and more steerable - so you can get your desired output with less effort. Claude can also take direction on personality, tone, and behavior.',
    models: [
      {
        name: 'Claude Instant 1.2',
        description: 'Supports: Question answering, information extraction, removing PII, content generation, multiple choice classification, Roleplay, comparing text, summarization, document Q&A with citation.',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=anthropic.claude-instant-v1',
        bedrock_model_id: 'anthropic.claude-instant-v1'
      },
      {
        name: 'Claude 1.3',
        description: 'Supports: Question answering, information extraction, removing PII, content generation, multiple choice classification, Roleplay, comparing text, summarization, document Q&A with citation.',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=anthropic.claude-v1',
        bedrock_model_id: 'anthropic.claude-v1'
      },
      {
        name: 'Claude 2',
        description: 'Supports: Question answering, information extraction, removing PII, content generation, multiple choice classification, Roleplay, comparing text, summarization, document Q&A with citation.',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=anthropic.claude-v2',
        bedrock_model_id: 'anthropic.claude-v2'
      }
    ]
  },
  {
    name: 'Cohere',
    description: 'Cohere models are text generation models for business use cases. Cohere models are trained on data that supports reliable business applications, like text generation, summarization, copywriting, dialogue, extraction, and question answering.',
    models: [
      {
        name: 'Command',
        description: 'Supports: Summarization, copywriting, dialogue, extraction, and question answering.',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=cohere.command-text-v14',
        bedrock_model_id: 'cohere.command-text-v14'
      },
      {
        name: 'Command Light',
        description: 'Supports: Summarization, copywriting, dialogue, extraction, and question answering.',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=cohere.command-light-text-v14',
        bedrock_model_id: 'cohere.command-light-text-v14'
      }
    ]
  },
  {
    name: 'Meta',
    description: 'Meta is looking to unlock the power of large language models. Our latest version of Llama is now accessible to individuals, creators, researchers and businesses of all sizes so that they can experiment, innovate and scale their ideas responsibly.',
    models: [
      {
        name: 'Llama 2 Chat 13B',
        description: 'Supports: Llama 2 is intended for commercial and research use in English. Fine-tuned chat models are intended for chat based applications.',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=meta.llama2-13b-chat-v1',
        bedrock_model_id: 'meta.llama2-13b-chat-v1'
      },
      {
        name: 'Llama 2 Chat 70B',
        description: 'Supports: Llama 2 is intended for commercial and research use in English. Fine-tuned chat models are intended for chat based applications.',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=meta.llama2-70b-chat-v1',
        bedrock_model_id: 'meta.llama2-70b-chat-v1'
      }
    ]
  },
  {
    name: 'Stability AI',
    description: "Stability AI is the world's leading open-source generative artificial intelligence company, collaborating with public and private sector partners to bring next generation infrastructure to a global audience.",
    models: [
      {
        name: 'SDXL 0.8',
        description: 'Supports: image generation, image editing',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=stability.stable-diffusion-xl-v0',
        bedrock_model_id: 'stability.stable-diffusion-xl-v0',
        kind: 'image'
      },
      {
        name: 'SDXL 1.0',
        description: 'Supports: image generation, image editing',
        documentation_url: 'https://us-east-1.console.aws.amazon.com/bedrock/home?region=us-east-1#/providers?model=stability.stable-diffusion-xl-v0',
        bedrock_model_id: 'stability.stable-diffusion-xl-v1',
        kind: 'image'
      }
    ]
  }
]

MODEL_PROVIDERS.each do |model_provider|
  bedrock_model_provider = ModelProvider.create!(name: model_provider[:name], description: model_provider[:description])
  model_provider[:models].each do |model|
    bedrock_model = Model.new(model)
    bedrock_model.model_provider_id = bedrock_model_provider.id
    bedrock_model.save!
  end
end
